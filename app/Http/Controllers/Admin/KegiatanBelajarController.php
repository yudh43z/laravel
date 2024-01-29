<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Rekap;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Kbm;
use App\Models\KbmInfo;
use App\Models\Guru;
use App\Models\MataPelajaran;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;
use Illuminate\Support\Facades\DB;

class KegiatanBelajarController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (auth()->user()->role == "admin") {
            $kelas = Kbm::with('guru', 'kelas')->get();
        } else if (auth()->user()->role == "siswa") {
            $siswa_info = Siswa::where('id', auth()->user()->id_siswa)->first();
            $kelas_data = Kelas::where('kelas', $siswa_info->kelas)->first();

            $kelas = Kbm::with('guru', 'kelas')->where('id_kelas', $kelas_data->id)->get();
        } else if (auth()->user()->role == "guru") {
            $kelas = Kbm::with('guru', 'kelas')->where('id_guru', auth()->user()->id_guru)->get();
        }

        return view('admin.kegiatan_belajar.index', compact('kelas'));
    }

    public function view($id)
    {
        $kelas = Kbm::with('guru', 'kelas', 'mapel')->find($id);

        // $list_kelas = Kelas::get();
        // $list_guru = Guru::get();
        // $list_mapel = MataPelajaran::get();

        $list_siswa = Siswa::where('kelas', $kelas->kelas->kelas)->get();
        $kbm_info = KbmInfo::where('id_kbm', $id)->get();

        $mengerti_arr = [];
        $tidak_mengerti_arr = [];
        $belum_mengikuti_arr = [];

        $mengerti_percent = 0;
        $tidak_mengerti_percent = 0;
        $belum_mengikuti_percent = 100;

        $mengerti_count = 0;
        $tidak_mengerti_count = 0;
        $belum_mengikuti_count = $list_siswa->count();

        $diatas_kkm = [];
        $dibawah_kkm = [];

        $diatas_kkm_percent = 0;
        $dibawah_kkm_percent = 0;

        if ($kbm_info->count() > 0) {
            $belum_mengikuti_count = 0;
            foreach ($kbm_info as $k) {
                if ($k->mengerti == 1) {
                    $mengerti_arr[] = true;
                    $mengerti_count++;
                } else if ($k->mengerti == 2) {
                    $tidak_mengerti_arr[] = true;
                    $tidak_mengerti_count++;
                } else if ($k->mengerti == 0) {
                    $belum_mengikuti_arr[] = true;
                    $belum_mengikuti_count++;
                }

                if ($k->nilai >= 75) {
                    $diatas_kkm[] = true;
                } else {
                    $dibawah_kkm[] = true;
                }
            }

            $mengerti_percent = (int) (count($mengerti_arr) / $list_siswa->count() * 100);
            $tidak_mengerti_percent = (int) (count($tidak_mengerti_arr) / $list_siswa->count() * 100);
            $belum_mengikuti_percent = 100 - $mengerti_percent - $tidak_mengerti_percent;

            $dibawah_kkm_percent = (int) (count($dibawah_kkm) / $list_siswa->count() * 100);
            $diatas_kkm_percent = 100 - $dibawah_kkm_percent;
        }

        return view('admin.kegiatan_belajar.view', compact('kelas', 'list_siswa', 'id', 'kbm_info', 'mengerti_percent', 'tidak_mengerti_percent', 'belum_mengikuti_percent', 'mengerti_count', 'tidak_mengerti_count', 'belum_mengikuti_count', 'diatas_kkm_percent', 'dibawah_kkm_percent'));
    }

    public function nilai($id)
    {
        $kelas = Kbm::with('guru', 'kelas', 'mapel')->find($id);

        // $result = DB::table('siswa')
        //     ->select('siswa.id', 'siswa.nis', 'siswa.nisn', 'siswa.nama', 'siswa.kelas')
        //     ->where('siswa.kelas', $kelas->kelas->kelas)
        //     ->get();

        $result = Siswa::where('kelas', $kelas->kelas->kelas)->select('siswa.id', 'siswa.nis', 'siswa.nisn', 'siswa.nama', 'siswa.kelas')->get();
        $kbm_info = KbmInfo::where('id_kbm', $id)->get();
        foreach ($result as &$r) {
            foreach ($kbm_info as $k) {
                if ($r->id == $k->id_siswa) {
                    $r->status = $k->mengerti;
                    $r->nilai = $k->nilai;
                    break;
                }
            }
        }

        return view('admin.kegiatan_belajar.nilai', compact('kelas', 'result', 'id'));
    }

    public function nilai_save($id, Request $request)
    {
        foreach ($request->status as $id_siswa => $v) {
            $nilai = $request->nilai[$id_siswa] ? $request->nilai[$id_siswa] : '-';
            $status = $request->status[$id_siswa];

            KbmInfo::where('id_kbm', $id)
                ->where('id_siswa', $id_siswa)
                ->updateOrCreate(
                    ['id_kbm' => $id, 'id_siswa' => $id_siswa],
                    ['nilai' => $nilai, 'mengerti' => $status]
                );
        }

        return redirect()->route('admin.nilai', ['id' => $id])->with([
            'message' => 'Data berhasil tersimpan',
            'alert-type' => 'success'
        ]);
    }
}
