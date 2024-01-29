@extends('layouts.app')

@section('content')
<div class="content">

    <div class="page-header-content header-elements-md-inline">
        <div class="page-title">
            <h5><i class="icon-library2 mr-2"></i> <span class="font-weight-semibold">Login</span> - Data Login</h5>

            <div class="breadcrumb mt-1">
                <a href="#" class="breadcrumb-item py-0">Data Master</a>
                <span class="breadcrumb-item py-0 active">Login</span>
            </div>
        </div>

        <div class="header-elements d-none">
            <div class="d-flex justify-content-center">
                <a href="#" onclick="window.location.reload(true);" class="btn btn-link btn-float text-default"><i class="icon-loop3 text-primary"></i><span>Refresh</span></a>
                <!-- <a href="#" target="_BLANK" class="btn btn-link btn-float text-default"><i class="icon-printer2 text-primary"></i> <span>Print</span></a> -->
                <a href="{{ route('admin.login.create') }}" class="btn btn-link btn-float text-default"><i class="icon-file-plus text-primary"></i> <span>Tambah</span></a>
            </div>
        </div>
    </div>

    <!-- Dashboard content -->
    <div class="row">
        <div class="col-lg-12">
            <!-- Basic responsive configuration -->
            <div class="card">
                <div class="card-header bg-primary text-white header-elements-inline">
                    <h6 class="card-title">Daftar Login</h6>
                </div>

                <div class="card-body">
                    <div class="table-responsive shadow-0 mb-0">
                        <table class="table datatable-responsive datatable-scroll-y table-striped" width="100%">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Lengkap</th>
                                    <th>Email</th>
                                    <th>Kelas</th>
                                    <th>Role</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                $no = 1;
                                @endphp
                                @foreach ($kelas as $k)
                                <tr>
                                    <td>{{ $no }}</td>
                                    <td>
                                        @if ($k->role == 'siswa')
                                        {{ $k->nama }}
                                        @elseif ($k->role == 'guru')
                                        {{ $k->nama_pengajar }}
                                        @else
                                        {{ $k->name }}
                                        @endif
                                    </td>
                                    <td>{{ $k->email }}</td>
                                    <td>
                                        @if ($k->role == 'siswa')
                                        {{ $k->kelas }}
                                        @else
                                        -
                                        @endif
                                    </td>
                                    <td>{{ $k->role }}</td>
                                    <td>
                                        <a href="/admin/login/{{ $k->id }}/edit" class="text-warning font-weight-semibold" data-toggle="tooltip" data-placement="left" title="Edit">
                                            <i class="mi-border-color"></i>
                                        </a>
                                        &nbsp;
                                        <form onclick="return confirm('Apakah Anda yakin ingin menghapus data ini? Data yang sudah terhapus tidak dapat dikembalikan');" class="d-inline-block" action="/admin/siswa/{{ $k->id }}" method="post">
                                            @csrf
                                            @method('delete')
                                            <button class="text-danger font-weight-semibold" style="cursor: pointer; border: 0; background: transparent;"> <i class="mi-cancel"></i> </button>
                                        </form>
                                    </td>
                                </tr>
                                @php
                                $no++;
                                @endphp
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /basic responsive configuration -->
        </div>
    </div>
    <!-- /dashboard content -->

</div>
@endsection