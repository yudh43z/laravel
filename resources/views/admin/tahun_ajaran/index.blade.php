@extends('layouts.app')

@section('content')
<div class="content">

    <div class="page-header-content header-elements-md-inline">
        <div class="page-title">
            <h5><i class="icon-library2 mr-2"></i> <span class="font-weight-semibold">Tahun Ajaran</span> - Data Tahun Ajaran</h5>

            <div class="breadcrumb mt-1">
                <a href="#" class="breadcrumb-item py-0">Data Master</a>
                <span class="breadcrumb-item py-0 active">Tahun Ajaran</span>
            </div>
        </div>

        <div class="header-elements d-none">
            <div class="d-flex justify-content-center">
                <a href="#" onclick="window.location.reload(true);" class="btn btn-link btn-float text-default"><i class="icon-loop3 text-primary"></i><span>Refresh</span></a>
                <!-- <a href="#" target="_BLANK" class="btn btn-link btn-float text-default"><i class="icon-printer2 text-primary"></i> <span>Print</span></a> -->
                <a href="{{ route('admin.tahun-ajaran.create') }}" class="btn btn-link btn-float text-default"><i class="icon-file-plus text-primary"></i> <span>Tambah</span></a>
            </div>
        </div>
    </div>

    <!-- Dashboard content -->
    <div class="row">
        <div class="col-lg-12">
            <!-- Basic responsive configuration -->
            <div class="card">
                <div class="card-header bg-primary text-white header-elements-inline">
                    <h6 class="card-title">Daftar Tahun Ajaran</h6>
                </div>

                <div class="card-body">
                    <div class="table-responsive shadow-0 mb-0">
                        <table class="table datatable-responsive datatable-scroll-y table-striped" width="100%">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Tahun Ajaran</th>
                                    <th>Status</th>
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
                                    <td>{{ $k->tahun_ajaran }}</td>
                                    <td><span class="badge @if ($k->status == 1) badge-success @else badge-warning @endif">@if ($k->status == 1) Aktif @else Tidak Aktif @endif</span></td>
                                    <td>
                                        <a href="{{ route('admin.tahun-ajaran.edit', [$k]) }}" class="text-warning font-weight-semibold" data-toggle="tooltip" data-placement="left" title="Edit">
                                            <i class="mi-border-color"></i>
                                        </a>
                                        &nbsp;
                                        <form onclick="return confirm('Apakah Anda yakin ingin menghapus data ini? Data yang sudah terhapus tidak dapat dikembalikan');" class="d-inline-block" action="{{ route('admin.tahun-ajaran.destroy', [$k]) }}" method="post">
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