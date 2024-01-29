<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;

class SiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kelas = Siswa::get();

        return view('admin.siswa.index', compact('kelas'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $list_form = [
            "email",
            "password",
            "handphone",
            "nama",
            "jns_kelamin",
            "tempat_lahir",
            "tgl_lahir",
            "agama",
            "alamat",
            "asal_sekolah",
            "nis",
            "nisn",
            "keterangan",
            "tahun_masuk",
            "kelas",
            "status"
        ];
        $list_kelas = Kelas::get();
        return view('admin.siswa.create', compact('list_form', 'list_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Siswa::create([
            'email' => $request->email,
            'password' => $request->password,
            'handphone' => $request->handphone,
            'nama' => $request->nama,
            'jns_kelamin' => $request->jns_kelamin,
            'tempat_lahir' => $request->tempat_lahir,
            'tgl_lahir' => $request->tgl_lahir,
            'agama' => $request->agama,
            'alamat' => $request->alamat,
            'asal_sekolah' => $request->asal_sekolah,
            'nis' => $request->nis,
            'nisn' => $request->nisn,
            'keterangan' => $request->keterangan,
            'tahun_masuk' => $request->tahun_masuk,
            'kelas' => $request->kelas,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.siswa.index')->with([
            'message' => 'Data berhasil tersimpan',
            'alert-type' => 'success'
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kelas = Siswa::find($id);
        $list_form = [
            "email",
            "password",
            "handphone",
            "nama",
            "jns_kelamin",
            "tempat_lahir",
            "tgl_lahir",
            "agama",
            "alamat",
            "asal_sekolah",
            "nis",
            "nisn",
            "keterangan",
            "tahun_masuk",
            "kelas",
            "status"
        ];
        $list_kelas = Kelas::get();
        return view('admin.siswa.edit', compact('kelas', 'list_form', 'list_kelas'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request)
    {
        $kelas = Siswa::find($id);

        $update = [
            'email' => $request->email,
            'password' => $request->password,
            'handphone' => $request->handphone,
            'nama' => $request->nama,
            'jns_kelamin' => $request->jns_kelamin,
            'tempat_lahir' => $request->tempat_lahir,
            'tgl_lahir' => $request->tgl_lahir,
            'agama' => $request->agama,
            'alamat' => $request->alamat,
            'asal_sekolah' => $request->asal_sekolah,
            'foto' => $request->foto,
            'nis' => $request->nis,
            'nisn' => $request->nisn,
            'keterangan' => $request->keterangan,
            'tahun_masuk' => $request->tahun_masuk,
            'kelas' => $request->kelas,
            'status' => $request->status,
        ];
        $kelas->update($update);

        return redirect()->route('admin.siswa.index')->with([
            'message' => 'Data berhasil diperbarui',
            'alert-type' => 'info'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kelas = Siswa::find($id);
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
