@extends('layouts.app')

@section('content')
<div class="content">

    <div class="page-header-content header-elements-md-inline">
        <div class="page-title">
            <h5><i class="icon-library2 mr-2"></i> <span class="font-weight-semibold">Manajemen Nilai</span> dan Status Pencapaian</h5>

            <div class="breadcrumb mt-1">
                <a href="#" class="breadcrumb-item py-0">Input Nilai</a>
                <span class="breadcrumb-item py-0 active">{{ $kelas->judul }} - Kelas: {{ $kelas->kelas->kelas }}</span>
            </div>
        </div>

        <div class="header-elements d-none">
            <div class="d-flex justify-content-center">
                <a href="#" onclick="window.location.reload(true);" class="btn btn-link btn-float text-default"><i class="icon-loop3 text-primary"></i><span>Refresh</span></a>
                <!-- <a href="#" target="_BLANK" class="btn btn-link btn-float text-default"><i class="icon-printer2 text-primary"></i> <span>Print</span></a> -->
                <!-- <a href="{{ route('admin.kbm.create') }}" class="btn btn-link btn-float text-default"><i class="icon-file-plus text-primary"></i> <span>Tambah</span></a> -->
            </div>
        </div>
    </div>

    <!-- Dashboard content -->
    <div class="row">
        <div class="col-lg-12">
            <!-- Basic responsive configuration -->
            <div class="card">
                <div class="card-header bg-primary text-white header-elements-inline">
                    <h6 class="card-title" style="width: 100%;">
                        <a style="color: #FFFFFF;" href="/admin/materi/{{ $id }}"><i class="icon-arrow-left8"></i></a>&nbsp;&nbsp;Daftar Siswa
                    </h6>
                </div>

                <div class="card-body">
                    <form method="POST" action="">
                        @csrf
                        <div class="table-responsive shadow-0 mb-0">
                            <table class="table table-striped" width="100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>NIS</th>
                                        <th>NISN</th>
                                        <th>Nama Siswa</th>
                                        <th>Kelas</th>
                                        <th>Nilai</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                    $no = 1;
                                    @endphp
                                    @foreach ($result as $k)
                                    <tr>
                                        <td>{{ $no }}</td>
                                        <td>{{ $k->nis }}</td>
                                        <td>{{ $k->nisn }}</td>
                                        <td>{{ $k->nama }}</td>
                                        <td>{{ $k->kelas }}</td>
                                        <td><input type="text" value="{{ $k->nilai }}" class="form-control" name="nilai[{{ $k->id }}]" /></td>
                                        <td>
                                            <select class="form-control" name="status[{{ $k->id }}]">
                                                <option @if ($k->status == 0) selected="selected" @endif value="0">Belum Mengikuti</option>
                                                <option @if ($k->status == 1) selected="selected" @endif value="1">Mengerti</option>
                                                <option @if ($k->status == 2) selected="selected" @endif value="2">Tidak Mengerti</option>
                                            </select>
                                        </td>
                                        <td><span class="badge @if ($k->status == 1) badge-success @elseif ($k->status == 2) badge-danger @else badge-warning @endif">@if ($k->status == 1) Mengerti @elseif ($k->status == 2) Belum Mengerti @else Belum Mengikuti @endif</span></td>
                                    </tr>
                                    @php
                                    $no++;
                                    @endphp
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <button class="btn btn-primary btn-md w-100 mt-2">Simpan Data</button>
                    </form>
                </div>
            </div>
            <!-- /basic responsive configuration -->
        </div>
    </div>
    <!-- /dashboard content -->

</div>
@endsection