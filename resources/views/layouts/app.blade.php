<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>E-Learning</title>

    <!-- Global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
    <link href="{{ asset('global_assets_app/css/icons/icomoon/styles.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('global_assets_app/css/icons/material/icons.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets_app/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets_app/css/bootstrap_limitless.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets_app/css/layout.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets_app/css/components.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets_app/css/colors.min.css') }}" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <!-- /global stylesheets -->

    <!-- Update style css -->
    <link rel="stylesheet" href="{{ asset('assets_app/css/custom_style.css') }}" rel="stylesheet" type="text/css">

    <!-- Core JS files -->
    <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script> -->
    <script src="{{ asset('global_assets_app/js/main/jquery.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/main/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/loaders/blockui.min.js') }}"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script src="{{ asset('global_assets_app/js/plugins/visualization/d3/d3.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/visualization/d3/d3_tooltip.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/forms/styling/switchery.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/forms/selects/bootstrap_multiselect.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/ui/moment/moment.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/pickers/daterangepicker.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/buttons/spin.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/buttons/ladda.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/tables/datatables/datatables.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/tables/datatables/extensions/responsive.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/extensions/jquery_ui/interactions.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/forms/selects/select2.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/forms/styling/uniform.min.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/plugins/uploaders/fileinput/fileinput.min.js') }}"></script>

    <script src="{{ asset('assets_app/js/app.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/dashboard.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/components_buttons.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/datatables_responsive.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/form_select2.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/form_inputs.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/uploader_bootstrap.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/form_checkboxes_radios.js') }}"></script>
    <script src="{{ asset('global_assets_app/js/demo_pages/components_modals.js') }}"></script>
    <!-- <script data-ad-client="ca-pub-6963330720076962" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> -->

    <!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
    <!-- Bootstrap Date-Picker Plugin -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-E8NBQ1Y8GV"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'G-E8NBQ1Y8GV');
    </script>
    <!-- /theme JS files -->

    <style>
        /* Style the Image Used to Trigger the Modal */
        .img-thumbnail {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .img-thumbnail:hover {
            opacity: 0.7;
        }

        /* The Modal (background) */
        .gambar_modal {
            /* Modal */
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1;
            /* Sit on top */
            padding-top: 100px;
            /* Location of the box */
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            background-color: rgb(0, 0, 0);
            /* Fallback color */
            background-color: rgba(0, 0, 0, 0.9);
            /* Black w/ opacity */
        }

        /* Modal Content (Image) */
        .konten_modal {
            /* modal content */
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
        }

        /* Caption of Modal Image (Image Text) - Same Width as the Image */
        #caption {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
            text-align: center;
            color: #ccc;
            padding: 10px 0;
            height: 150px;
        }

        /* Add Animation - Zoom in the Modal */
        .konten_modal,
        #caption {
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @keyframes zoom {
            from {
                transform: scale(0)
            }

            to {
                transform: scale(1)
            }
        }

        /* The Close Button */
        .close {
            position: absolute;
            top: 15px;
            right: 35px;
            color: #f1f1f1;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        /* 100% Image Width on Smaller Screens */
        @media only screen and (max-width: 700px) {
            .modal-content {
                width: 100%;
            }
        }
    </style>

    <script>
        function fn_toggle(class_name) {
            if ($('.' + class_name).hasClass("hidden")) {
                $('.' + class_name).removeClass('hidden')
                $('.' + class_name).addClass('block')

                $('.' + class_name + '_icon').removeClass('icon-chevron-right')
                $('.' + class_name + '_icon').addClass('icon-chevron-down')

                $('.' + class_name).show()
            } else {
                $('.' + class_name).removeClass('block')
                $('.' + class_name).addClass('hidden')

                $('.' + class_name + '_icon').removeClass('icon-chevron-down')
                $('.' + class_name + '_icon').addClass('icon-chevron-right')

                $('.' + class_name).hide()
            }
        }
    </script>
</head>

<body>
    <!-- Main navbar -->
    <div class="navbar navbar-expand-md navbar-dark bg-primary">

        <!-- Header with logos -->
        <div class="navbar-header navbar-dark d-none d-md-flex align-items-md-center">
            <p style="margin-top: 0.25%; text-align: center; padding-left: 20px; position: absolute; z-index: 99999999999; font-size: 16px; font-family: Roboto;">E-Learning</p>

            <div class="navbar-brand navbar-brand-md">
                <!-- <p>E-Learning</p> -->
            </div>

            <div class="navbar-brand navbar-brand-xs">
                <a href="#" class="d-inline-block">
                    <i class="icon-home4" style="color: white"></i>
                </a>
            </div>
        </div>
        <!-- /header with logos -->


        <!-- Mobile controls -->
        <div class="d-flex flex-1 d-md-none">
            <p style="margin-top: 0.25%; text-align: center; padding-top: 10px; position: absolute; z-index: 999; font-size: 16px; font-family: Roboto;">E-Learning</p>

            <div class="navbar-brand mr-auto">
                <a href="#" class="d-inline-block">
                </a>
            </div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile">
                <i class="icon-tree5"></i>
            </button>

            <button class="navbar-toggler sidebar-mobile-main-toggle" type="button">
                <i class="icon-paragraph-justify3"></i>
            </button>
        </div>
        <!-- /mobile controls -->

        <!-- Navbar content -->
        <div class="collapse navbar-collapse" id="navbar-mobile">
            <ul class="navbar-nav mr-md-auto">
                <li class="nav-item">
                    <a href="#" class="navbar-nav-link sidebar-control sidebar-main-toggle d-none d-md-block">
                        <i class="icon-paragraph-justify3"></i>
                    </a>
                </li>
            </ul>

            <ul class="navbar-nav">
                <li class="nav-item dropdown dropdown-user">
                    <a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
                        <img src="@if (Auth::user()->foto) {{ Storage::url('foto/'.Auth::user()->foto) }} @else /images/no-profile.png @endif" class="rounded-circle mr-2" style="object-fit: cover;" height="34" width="34" alt="">
                        <span>
                            {{ Auth::user()->name }}
                        </span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="/admin/profile" class="dropdown-item"><i class="icon-cog5"></i> Pengaturan Akun</a>
                        <!-- <a href="#" class="dropdown-item"><i class="icon-switch2"></i> Logout</a> -->
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf
                            <a href="{{ route('logout') }}" class="dropdown-item" onclick="event.preventDefault(); this.closest('form').submit();">
                                <i class="icon-switch2"></i> Logout
                            </a>
                        </form>
                    </div>
                </li>
            </ul>
        </div>
        <!-- /navbar content -->

    </div>
    <!-- /main navbar -->

    <!-- Page content -->
    <div class="page-content">
        <!-- Main sidebar -->
        <div class="sidebar sidebar-dark sidebar-main sidebar-expand-md">

            <!-- Sidebar mobile toggler -->
            <div class="sidebar-mobile-toggler text-center">
                <a href="#" class="sidebar-mobile-main-toggle">
                    <i class="icon-arrow-left8"></i>
                </a>
                Navigation
                <a href="#" class="sidebar-mobile-expand">
                    <i class="icon-screen-full"></i>
                    <i class="icon-screen-normal"></i>
                </a>
            </div>
            <!-- /sidebar mobile toggler -->


            <div class="sidebar-content">
                <!-- User menu -->
                <div class="sidebar-user">
                    <div class="card-body">
                        <div class="media">
                            <div class="col-12" style="text-align: center; margin-top: -10%;">
                                <img style="object-fit: cover; margin-top: 20px;" src="@if (Auth::user()->foto) {{ Storage::url('foto/'.Auth::user()->foto) }} @else /images/no-profile.png @endif" width="120" height="120" class="rounded-circle" alt="">
                                <h3 style="margin-top: 5%; margin-bottom: 0%;"></h3>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /user menu -->

                <!-- Main navigation -->
                <div class="card card-sidebar-mobile">
                    <ul class="nav nav-sidebar" data-nav-type="accordion">
                        <!-- Main -->
                        <li class="nav-item"><a href="/admin/dashboard" class="nav-link"><i class="icon-home4"></i><span>Dashboard</span></a></li>

                        @if (Auth::user()->role == "admin")
                        <li class="nav-item nav-item-submenu ">
                            <a href="#" class="nav-link"><i class="icon-users"></i><span>Data User</span></a>
                            <ul class="nav nav-group-sub" data-submenu-title="Daftar User">
                                <li class="nav-item"><a href="/admin/siswa" class="nav-link ">Data Siswa</a></li>
                                <li class="nav-item"><a href="/admin/guru" class="nav-link ">Data Guru</a></li>
                                <li class="nav-item"><a href="/admin/login" class="nav-link ">Data Login</a></li>
                            </ul>
                        </li>
                        @endif

                        @if (Auth::user()->role == "admin" || Auth::user()->role == "guru")
                        <li class="nav-item nav-item-submenu ">
                            <a href="#" class="nav-link"><i class="icon-bookmark"></i><span>Data Master</span></a>
                            <ul class="nav nav-group-sub" data-submenu-title="Data Master">
                                @if (Auth::user()->role == "admin")
                                <li class="nav-item"><a href="/admin/tahun-ajaran" class="nav-link ">Tahun Ajaran</a></li>
                                <li class="nav-item"><a href="/admin/semester" class="nav-link ">Semester</a></li>
                                <li class="nav-item"><a href="/admin/kelas" class="nav-link ">Kelas</a></li>
                                @endif
                                <li class="nav-item"><a href="/admin/mata-pelajaran" class="nav-link ">Mata Pelajaran</a></li>
                                <li class="nav-item"><a href="/admin/kbm" class="nav-link ">Daftar KBM</a></li>
                            </ul>
                        </li>
                        @endif

                        <li class="nav-item nav-item-submenu ">
                            <a href="#" class="nav-link"><i class="icon-design"></i><span>Belajar Siswa</span></a>
                            <ul class="nav nav-group-sub" data-submenu-title="Belajar Siswa">
                                <li class="nav-item"><a href="/admin/kegiatan-belajar" class="nav-link ">Kegiatan Belajar</a></li>
                            </ul>
                        </li>

                        <!-- <li class="nav-item nav-item-submenu ">
                            <a href="#" class="nav-link "><i class="icon-check"></i> <span>Penilaian Siswa</span></a>
                            <ul class="nav nav-group-sub" data-submenu-title="Icons">
                                <li class="nav-item"><a href="/admin/jadwal-penilaian" class="nav-link ">Jadwal Penilaian </a></li>
                                <li class="nav-item"><a href="/admin/soal-penilaian" class="nav-link ">Soal Penilaian </a></li>
                                <li class="nav-item"><a href="/admin/kegiatan-penilaian" class="nav-link ">Kegiatan Penilaian </a></li>
                                <li class="nav-item"><a href="/admin/daftar-nilai" class="nav-link ">Daftar Nilai </a></li>
                            </ul>
                        </li> -->

                        <li class="nav-item">
                            <a href="/admin/profile" class="nav-link ">
                                <i class="icon-cog2"></i><span>Pengaturan Akun</span>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>

        </div>
        <!-- /sidebar content -->

        <div class="content-wrapper">
            @yield('content')

            <!-- Footer -->
            <div class="navbar navbar-expand-lg navbar-light">
                <div class="text-center d-lg-none w-100">
                    <button type="button" class="navbar-toggler dropdown-toggle" data-toggle="collapse" data-target="#navbar-footer">
                        <i class="icon-unfold mr-2"></i>
                        Footer
                    </button>
                </div>

                <div class="navbar-collapse collapse" id="navbar-footer">
                    <span class="navbar-text">
                        &copy; 2024. <a href="#">E-Learning</a>
                    </span>

                    <ul class="navbar-nav ml-lg-auto">
                        <li class="nav-item"><a href="#" class="navbar-nav-link" target="_blank"><i class="icon-lifebuoy mr-2"></i> Support</a></li>
                        <li class="nav-item"><a href="#" class="navbar-nav-link" target="_blank"><i class="icon-file-text2 mr-2"></i> Docs</a></li>
                    </ul>
                </div>
            </div>
            <!-- /footer -->
        </div>
    </div>
    <!-- /main sidebar -->

</body>

</html>