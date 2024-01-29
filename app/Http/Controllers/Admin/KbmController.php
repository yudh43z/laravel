<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Rekap;
use App\Models\Kelas;
use App\Models\Guru;
use App\Models\MataPelajaran;
use App\Models\Kbm;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;

class KbmController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (auth()->user()->role == "admin") {
            $kelas = Kbm::with('guru', 'kelas')->get();
        } else {
            $kelas = Kbm::with('guru', 'kelas')->where('id_guru', auth()->user()->id_guru)->get();
        }

        return view('admin.kbm.index', compact('kelas'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $list_kelas = Kelas::get();
        $list_guru = Guru::get();
        $list_mapel = MataPelajaran::get();
        return view('admin.kbm.create', compact('list_kelas', 'list_guru', 'list_mapel'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $gambar = '';
        try {
            if ($request->file('gambar')) {
                $gambar = $request->file('gambar')->store(
                    'gambar',
                    'public'
                );
            }
        } catch (\Throwable $th) {
        }

        $pdf = '';
        try {
            if ($request->file('pdf')) {
                $pdf = $request->file('pdf')->store(
                    'pdf',
                    'public'
                );
            }
        } catch (\Throwable $th) {
        }

        $gambar = str_replace('gambar', '', $gambar);
        $pdf = str_replace('pdf', '', $pdf);

        Kbm::create([
            'gambar' => $gambar,
            'judul' => $request->judul,
            'keterangan' => $request->keterangan,
            'materi' => $request->materi,
            'id_kelas' => $request->id_kelas,
            'video' => $request->video,
            'pdf' => $pdf,
            'id_guru' => $request->id_guru,
            'status' => $request->status,
            'id_mapel' => $request->id_mapel,
        ]);

        return redirect()->route('admin.kbm.index')->with([
            'message' => 'Data berhasil tersimpan',
            'alert-type' => 'success'
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kelas = Kbm::find($id);
        $list_kelas = Kelas::get();
        $list_guru = Guru::get();
        $list_mapel = MataPelajaran::get();
        return view('admin.kbm.edit', compact('kelas', 'list_kelas', 'list_guru', 'list_mapel'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request)
    {
        $kelas = Kbm::find($id);

        $update = [
            'judul' => $request->judul,
            'keterangan' => $request->keterangan,
            'materi' => $request->materi,
            'id_kelas' => $request->id_kelas,
            'video' => $request->video,
            'id_guru' => $request->id_guru,
            'id_mapel' => $request->id_mapel,
        ];

        $gambar = '';
        try {
            if ($request->file('gambar')) {
                $gambar = $request->file('gambar')->store(
                    'gambar',
                    'public'
                );
            }
        } catch (\Throwable $th) {
        }

        $pdf = '';
        try {
            if ($request->file('pdf')) {
                $pdf = $request->file('pdf')->store(
                    'pdf',
                    'public'
                );
            }
        } catch (\Throwable $th) {
        }

        if ($gambar) {
            $gambar = str_replace('gambar', '', $gambar);
            $update['gambar'] = $gambar;
        }
        if ($pdf) {
            $pdf = str_replace('pdf', '', $pdf);
            $update['pdf'] = $pdf;
        }

        $kelas->update($update);

        return redirect()->route('admin.kbm.index')->with([
            'message' => 'Data berhasil diperbarui',
            'alert-type' => 'info'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kelas = Kbm::find($id);
        if ($kelas) {
            $kelas->delete();
            return redirect()->back()->with([
                'message' => 'Data berhasil dihapus',
                'alert-type' => 'danger'
            ]);
        } else {
            return redirect()->back()->with([
                'message' => 'Data berhasil dihapus',
                'alert-type' => 'danger'
            ]);
        }
    }
}
