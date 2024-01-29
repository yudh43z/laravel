<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\Guru;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;

class GuruController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kelas = Guru::get();

        return view('admin.guru.index', compact('kelas'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.guru.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Guru::create([
            'nip' => $request->nip,
            'nama_pengajar' => $request->nama_pengajar,
            'kategori_pengajar' => $request->kategori_pengajar,
            'keterangan' => $request->keterangan,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.guru.index')->with([
            'message' => 'Data berhasil tersimpan',
            'alert-type' => 'success'
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kelas = Guru::find($id);
        return view('admin.guru.edit', compact('kelas'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request)
    {
        $kelas = Guru::find($id);

        $update = [
            'nip' => $request->nip,
            'nama_pengajar' => $request->nama_pengajar,
            'kategori_pengajar' => $request->kategori_pengajar,
            'keterangan' => $request->keterangan,
            'status' => $request->status,
        ];
        $kelas->update($update);

        return redirect()->route('admin.guru.index')->with([
            'message' => 'Data berhasil diperbarui',
            'alert-type' => 'info'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kelas = Guru::find($id);
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
