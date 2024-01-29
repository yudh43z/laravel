<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Rekap;
use App\Models\Kelas;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;

class KelasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kelas = Kelas::get();

        return view('admin.kelas.index', compact('kelas'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.kelas.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Kelas::create([
            'kelas' => $request->kelas,
            'nama_wali_kelas' => $request->nama_wali_kelas,
            'total_siswa' => $request->total_siswa,
            'keterangan' => $request->keterangan,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.kelas.index')->with([
            'message' => 'Data berhasil tersimpan',
            'alert-type' => 'success'
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kelas = Kelas::find($id);
        return view('admin.kelas.edit', compact('kelas'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request)
    {
        $kelas = Kelas::find($id);

        $update = [
            'kelas' => $request->kelas,
            'nama_wali_kelas' => $request->nama_wali_kelas,
            'total_siswa' => $request->total_siswa,
            'keterangan' => $request->keterangan,
            'status' => $request->status,
        ];
        $kelas->update($update);

        return redirect()->route('admin.kelas.index')->with([
            'message' => 'Data berhasil diperbarui',
            'alert-type' => 'info'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kelas = Kelas::find($id);
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
