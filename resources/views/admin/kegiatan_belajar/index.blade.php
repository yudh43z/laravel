@extends('layouts.app')

@section('content')
<div class="content">

    <div class="page-header-content header-elements-md-inline">
        <div class="page-title">
            <h5><i class="icon-design mr-2"></i> <span class="font-weight-semibold">Belajar Siswa</span> - Data Belajar Siswa</h5>

            <div class="breadcrumb mt-1">
                <span class="breadcrumb-item py-0 active">Belajar Siswa</span>
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
                    <h6 class="card-title">Daftar Kegiatan Belajar</h6>
                </div>

                @if ($kelas && count($kelas) > 0)

                <div class="card-body">
                    <div class="row">
                        @foreach ($kelas as $k)
                        <div class="col-md-6">
                            <div class="card blog-horizontal">
                                <div class="card-header">
                                    <h5 class="card-title font-weight-semibold">
                                        <a href="materi/{{ $k->id }}" class="text-default">{{ $k->judul }}</a>
                                    </h5>
                                </div>

                                <div class="card-body">
                                    <div class="card-img-actions mr-3">
                                        <img class="card-img img-fluid" src="{{ Storage::url('gambar'.$k->gambar) }}" alt="">

                                        <div class="card-img-actions-overlay card-img">
                                            <a href="materi/{{ $k->id }}" class="btn btn-outline bg-white text-white border-white border-2 btn-icon rounded-round">
                                                <i class="icon-link"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <p>{{ $k->materi }}</p>
                                </div>

                                <div class="card-footer bg-transparent justify-content-sm-between align-items-sm-center border-top-0 pt-0 pb-3">
                                    <ul class="list-inline list-inline-dotted text-muted mb-3 mb-sm-0">
                                        <li class="list-inline-item"><i class="icon-user"></i><a href="#" class="text-muted">{{ $k->guru->nama_pengajar }}</a></li>
                                        <li class="list-inline-item"><a href="#" class="text-info font-weight-semibold"><i class="icon-pencil5 text-info"></i> Kelas: {{ $k->kelas->kelas }}</a></li>
                                        <li class="list-inline-item"><a href="#" data-href="#" class="text-success font-weight-semibold" title="Delete" data-toggle="modal" data-target="#confirm-delete"><i class="icon-check text-success"></i> Mata Pelajaran: {{ $k->mapel->nama_mapel }}</a></li>
                                    </ul>

                                    <a href="materi/{{ $k->id }}" class="btn bg-info btn-sm mt-3 w-100">
                                        Lihat Materi
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>

                @else
                <div class="card-body">
                    <!-- <div class="row">
                        <div class="col-lg-4">

                        </div>
                    </div> -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="mb-5"></div>
                            <img src="/assets/img/404.png" style="display: block; width: 30%; margin: 30px auto" alt="">
                            <div class="text-center mb-3 py-2">
                                <h1 class="font-weight-semibold mb-1">Data Materi Belum Ada</h1>
                                <span class="text-muted d-block">Silahkan hubungi admin / guru untuk informasi lebih lanjut</span>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
            </div>
            <!-- /basic responsive configuration -->
        </div>
    </div>
    <!-- /dashboard content -->

</div>
@endsection