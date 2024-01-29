<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Rekap;
use App\Models\Kelas;
use App\Models\MataPelajaran;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;

class MataPelajaranController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kelas = MataPelajaran::get();

        return view('admin.mata_pelajaran.index', compact('kelas'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.mata_pelajaran.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        MataPelajaran::create([
            'nama_mapel' => $request->nama_mapel,
            'kategori_mapel' => $request->kategori_mapel,
            'kode_mapel' => $request->kode_mapel,
            'keterangan' => $request->keterangan,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.mata-pelajaran.index')->with([
            'message' => 'Data berhasil tersimpan',
            'alert-type' => 'success'
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kelas = MataPelajaran::find($id);
        return view('admin.mata_pelajaran.edit', compact('kelas'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request)
    {
        $kelas = MataPelajaran::find($id);

        $update = [
            'nama_mapel' => $request->nama_mapel,
            'kategori_mapel' => $request->kategori_mapel,
            'kode_mapel' => $request->kode_mapel,
            'keterangan' => $request->keterangan,
            'status' => $request->status,
        ];
        $kelas->update($update);

        return redirect()->route('admin.mata-pelajaran.index')->with([
            'message' => 'Data berhasil diperbarui',
            'alert-type' => 'info'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kelas = MataPelajaran::find($id);
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
