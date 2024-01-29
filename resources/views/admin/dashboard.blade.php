@extends('layouts.app')

@section('content')
<!-- Content Header (Page header) -->

<div class="content">

    <!-- Dashboard content -->
    <div class="row">
        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_kepegawaian');">
                <div class="card card-body bg-blue-700" style="background: #179f87 !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">632</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">Kepegawaian</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-users icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_pengajar');">
                <div class="card card-body bg-green-700" style="background: #27ae61 !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">431</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">Guru</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-users icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_siswa');">
                <div class="card card-body bg-danger" style="background: #287eb9 !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">3069</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">Siswa</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-users icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_ortu');">
                <div class="card card-body bg-orange-700" style="background: #8e42ac !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">1052</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">Orang Tua</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-users icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_kelas');">
                <div class="card card-body bg-blue-700" style="background: #f29c13 !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">226</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">Kelas</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-list icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_mapel');">
                <div class="card card-body bg-green-700" style="background: #d45300 !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">438</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">Mapel</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-books icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_kbm');">
                <div class="card card-body bg-danger" style="background: #c1392b !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">839</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">KBM</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-bookmark icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-6 col-xl-3">
            <a style="cursor: pointer;" onclick="fn_redirect_dashboard('total_informasi');">
                <div class="card card-body bg-orange-700" style="background: #179f87 !important;">
                    <div class="media">
                        <div class="media-body">
                            <h3 class="font-weight-semibold mb-0" style="font-size:42px;">50</h3>
                            <span class="text-uppercase font-size-sm text-white" style="font-size:18px;">Informasi</span>
                        </div>

                        <div class="ml-3 align-self-center">
                            <i class="icon-pencil icon-3x text-white" style="font-size:72px;"></i>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>



    <div class="row">
        <div class="col-lg-6">
            <div class="card card-body border-top-teal">
                <h6 class="mb-0 font-weight-semibold">Informasi</h6>
                <p class="mb-3 text-muted">Seputar Sekolah</p>
                <hr class="mt-0">
                <div class="list-feed">
                    <!-- <div class="list-feed-item">
                            <div class="text-muted">Apr 5, 2020</div>
                            Update features, fix bug belajar siswa on WEB & APPS
                        </div> -->

                    <div class="list-feed-item">
                        <div class="text-muted">Januari 24, 2024</div>
                        Fitur Ujian Sekarang Sudah Bisa Digunakan
                    </div>
                    <div class="list-feed-item">
                        <div class="text-muted">Januari 20, 2024</div>
                        Rasakan Sensasi Belajar Seru Dengan Aplikasi E-Learning
                    </div>
                    <div class="list-feed-item">
                        <div class="text-muted">Januari 01, 2024</div>
                        Happy Holiday & New Year!
                    </div>
                    <div class="list-feed-item">
                        <div class="text-muted">Desember 19, 2023</div>
                        Liburan Sekolah Sebentar Lagi
                    </div>
                </div>
            </div>

        </div>

        <div class="col-lg-6">
            <div class="card card-body border-top-teal">
                <div class="row justify-content-between">
                    <div class="col-sm-5">
                        <h6 class="mb-0 font-weight-semibold">Informasi</h6>
                        <p class="mb-3 text-muted">Changelog Aplikasi</p>
                    </div>
                    <div class="col-sm-3">
                        <!-- <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal_form">Tambah</button> -->
                    </div>
                </div>
                <hr class="mt-0">
                <div class="list-feed">
                    <div class="list-feed-item">
                        <div class="text-muted">Januari 20, 2024</div>
                        Perbaikan Fitur & Maintenance Aplikasi
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /dashboard content -->

</div>
@endsection