<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\User;
use App\Models\Guru;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\TravelPackageRequest;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kelas = DB::table('users')
            ->leftJoin('guru', 'users.id_guru', '=', 'guru.id')
            ->leftJoin('siswa', 'users.id_siswa', '=', 'siswa.id')
            ->select('users.id', 'users.email', 'users.name', 'siswa.nama', 'guru.nama_pengajar', 'siswa.kelas', 'users.role')
            ->get();

        return view('admin.login.index', compact('kelas'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $list_guru = Guru::get();
        $list_siswa = Siswa::get();
        return view('admin.login.create', compact('list_guru', 'list_siswa'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $id_siswa = null;
        $id_guru = null;
        if ($request->role == 'siswa') {
            $id_siswa = $request->id_siswa;
        }
        if ($request->role == 'guru') {
            $id_guru = $request->id_guru;
        }

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'is_admin' => 1,
            'password' => bcrypt($request->password),
            'role' => $request->role,
            'id_siswa' => $id_siswa,
            'id_guru' => $id_guru,
        ]);

        return redirect()->route('admin.login.index')->with([
            'message' => 'Data berhasil tersimpan',
            'alert-type' => 'success'
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kelas = User::find($id);
        $list_guru = Guru::get();
        $list_siswa = Siswa::get();
        return view('admin.login.edit', compact('kelas', 'list_guru', 'list_siswa'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request)
    {
        $id_siswa = null;
        $id_guru = null;
        if ($request->role == 'siswa') {
            $id_siswa = $request->id_siswa;
        }
        if ($request->role == 'guru') {
            $id_guru = $request->id_guru;
        }

        $kelas = User::find($id);

        $update = [
            'name' => $request->name,
            'email' => $request->email,
            'is_admin' => 1,
            'role' => $request->role,
            'id_siswa' => $id_siswa,
            'id_guru' => $id_guru,
        ];
        if ($request->password) {
            $update['password'] = bcrypt($request->password);
        }
        $kelas->update($update);

        return redirect()->route('admin.login.index')->with([
            'message' => 'Data berhasil diperbarui',
            'alert-type' => 'info'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kelas = User::find($id);
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
