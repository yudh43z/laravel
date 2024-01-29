@extends('layouts.app')

@section('content')

<style>
    .show_mobile {
        display: none;
    }

    .show_desktop {
        display: block;
    }

    @media (min-width: 320px) and (max-width: 1023px) {
        .show_mobile {
            display: block;
        }

        .show_desktop {
            display: none;
        }

        .custom-card-body {
            padding: 0px;
        }
    }
</style>

<input type="hidden" id="id_kbm" value="{{ $id }}" />

<!-- Main content -->
<div class="content">

    <!-- Dashboard content -->
    <div class="row">
        <div class="col-lg-12">

        </div>

        <div class="col-lg-8">
            <div class="card">

                <div class="card-header bg-primary text-white header-elements-inline">
                    <h6 class="card-title" style="width: 100%;">
                        <a style="color: #FFFFFF;" href="/admin/kegiatan-belajar"><i class="icon-arrow-left8"></i></a>&nbsp;&nbsp;{{ $kelas->mapel->nama_mapel }}
                        <div style="float: right;">Kelas: {{ $kelas->kelas->kelas }}</div>
                    </h6>
                </div>

                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <!-- card _rating_pertemuan -->
                            <div class="card ">
                                <div class="card-img-actions">
                                    <img style="height: 293px;" class="card-img-top img-fluid" src="/images/no-profile.png" alt="">
                                </div>

                                <div class="card-body text-center">
                                    <h6 class="font-weight-semibold mb-0">{{ $kelas->mapel->nama_mapel }}</h6>
                                    <div class="list-icons list-icons-extended mt-2">
                                        <a href="#" class="list-icons-item" data-popup="tooltip" title="" data-container="body" data-original-title=""><i class="icon-star-full2" style="color: orange;"></i></a>
                                        <a href="#" class="list-icons-item" data-popup="tooltip" title="" data-container="body" data-original-title=""><i class="icon-star-full2" style="color: orange;"></i></a>
                                        <a href="#" class="list-icons-item" data-popup="tooltip" title="" data-container="body" data-original-title=""><i class="icon-star-full2" style="color: orange;"></i></a>
                                        <a href="#" class="list-icons-item" data-popup="tooltip" title="" data-container="body" data-original-title=""><i class="icon-star-full2" style="color: orange;"></i></a>
                                        <a href="#" class="list-icons-item" data-popup="tooltip" title="" data-container="body" data-original-title=""><i class="icon-star-full2" style="color: orange;"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-8">
                            <h6 style="padding: .9375rem 1.25rem; background: #2196f3; color: #FFF;">Materi Video Pembelajaran</h6>
                            <div class="card">
                                <div class="card-body p-0 _video_pertemuan">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <iframe width="320" height="240" src="https://www.youtube.com/embed/{{ $kelas->video }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                                    </div>

                                    <div style="text-align:center;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="m-4"></div>
                    <div class="m-4"></div>

                    <div class="col-lg-12">
                        <div class="card">

                            <div class="card-header bg-primary text-white header-elements-inline">
                                <h6 class="card-title" style="width: 100%;">Materi Modul</h6>
                            </div>

                            <div class="card-body custom-card-body">
                                <div class="show_mobile">
                                    <iframe src="{{ Storage::url('pdf'.$kelas->pdf) }}" width="100%" height="700" style="border: none; margin-bottom: -14% !important;"></iframe>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="show_desktop">
                                            <object id="module_content" data="{{ Storage::url('pdf'.$kelas->pdf) }}" type="application/pdf" width="100%" height="700px" allow-fullscreen="true"></object>
                                        </div>
                                    </div>
                                </div>
                                <div class="m-4"></div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="col-lg-4">
            @if (Auth::user()->role == "admin" || Auth::user()->role == "guru")
            <div class="card">
                <div class="card-header bg-primary text-white header-elements-inline">
                    <h6 class="card-title">Manajemen Data</h6>
                </div>
                <div class="card-body" style="text-align: center;">
                    <a href="/admin/nilai/{{ $id }}">
                        <div style="cursor: pointer; width: 70%; color: #FFF; height: 54px; padding: 16px; border-radius: 10px;" class="btn btn-md btn-primary">
                            <div class="row">
                                <div class="col-4 col-md-4" style="text-align: left;">
                                    <i class="icon-list"></i>
                                </div>

                                <div class="col-4 col-md-4">
                                    <p style="margin-left: -10px;">Input Nilai</p>
                                </div>

                                <div class="col-4 col-md-4" style="text-align: right;">
                                    <i class="icon-check"></i>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            @endif

            <div class="card">
                <div onclick="fn_toggle('data_pencapaian_siswa')" class="card-header bg-primary text-white header-elements-inline">
                    <h6 class="card-title">Data Pencapaian Siswa</h6>
                    <i style="float: right;" class="data_pencapaian_siswa_icon icon-chevron-right"></i>
                </div>
                <div class="card-body data_pencapaian_siswa hidden" style="display: none;">
                    <ul class="list-unstyled mb-0">
                        <li class="mb-3">
                            <div class="d-flex align-items-center mb-1">Mengerti: {{ $mengerti_count }} Siswa/i <span class="text-muted ml-auto">{{ $mengerti_percent }}%</span></div>
                            <div class="progress" style="height: 0.475rem;">
                                <div class="progress-bar bg-blue" style="width: {{ $mengerti_percent }}%">
                                    <span class="sr-only">100% Complete</span>
                                </div>
                            </div>
                        </li>

                        <li class="mb-3">
                            <div class="d-flex align-items-center mb-1">Tidak Mengerti: {{ $tidak_mengerti_count }} Siswa/i <span class="text-muted ml-auto">{{ $tidak_mengerti_percent }}%</span></div>
                            <div class="progress" style="height: 0.475rem;">
                                <div class="progress-bar bg-yellow" style="width: {{ $tidak_mengerti_percent }}%">
                                    <span class="sr-only">100% Complete</span>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="d-flex align-items-center mb-1">Belum Mengikuti: {{ $belum_mengikuti_count }} Siswa/i <span class="text-muted ml-auto">{{ $belum_mengikuti_percent }}%</span></div>
                            <div class="progress" style="height: 0.475rem;">
                                <div class="progress-bar bg-danger" style="width: {{ $belum_mengikuti_percent }}%">
                                    <span class="sr-only">100% Complete</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="card">
                <div onclick="fn_toggle('data_nilai_siswa')" class="card-header bg-primary text-white header-elements-inline">
                    <h6 class="card-title">Data Nilai Siswa</h6>
                    <i style="float: right;" class="data_nilai_siswa_icon icon-chevron-right"></i>
                </div>
                <div class="card-body data_nilai_siswa hidden" style="display: none;">
                    <ul class="list-unstyled mb-0">
                        <li class="mb-3">
                            <div class="d-flex align-items-center mb-1">Diatas KKM / Setara KKM: <span class="text-muted ml-auto">{{ $diatas_kkm_percent }}%</span></div>
                            <div class="progress" style="height: 0.475rem;">
                                <div class="progress-bar bg-blue" style="width: {{ $diatas_kkm_percent }}%">
                                    <span class="sr-only">100% Complete</span>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="d-flex align-items-center mb-1">Dibawah KKM: <span class="text-muted ml-auto">{{ $dibawah_kkm_percent }}%</span></div>
                            <div class="progress" style="height: 0.475rem;">
                                <div class="progress-bar bg-danger" style="width: {{ $dibawah_kkm_percent }}%">
                                    <span class="sr-only">100% Complete</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="card">
                <div onclick="fn_toggle('diskusi')" class="card-header bg-primary text-white header-elements-inline">
                    <!-- <h6 class="card-title">Diskusi <a onclick="fn_reload_discussion();" style="color: #FFF; margin-left: 10px;" href="#"><i class="icon-reload-alt"></i></a></h6>  -->
                    <h6 class="card-title">Diskusi</h6>
                    <i style="float: right;" class="diskusi_icon icon-chevron-right"></i>
                    <!-- <span class="text-sm">20 aktifitas</span> -->
                </div>
                <div class="card-body diskusi hidden" style="display: none;">
                    <ul id="_discussion_list" class="media-list media-chat media-chat-scrollable mb-3 h-240">
                        <!--  -->
                    </ul>

                    <input type="hidden" id="diskusi_id_sekolah" value="bb84c79a3f3dfdd28e497118bc6e8733">
                    <input type="hidden" id="diskusi_url_sekolah" value="">

                    <input type="hidden" id="diskusi_user" value="{{ Auth::user()->name }}">

                    <input type="hidden" id="diskusi_user_foto" value="67329767_p0.jpg">
                    <!-- <input type="hidden" id="diskusi_user_foto" value="http://localhost/disekolah.id-prd/app/profile/67329767_p0.jpg" /> -->
                    <!-- <input type="hidden" id="diskusi_user_foto" value="http://localhost/disekolah.id-prd/app/static/no-profile.png" /> -->

                    <textarea id="diskusi_user_diskusi" class="form-control mb-3" rows="2" cols="1" placeholder="Enter your message..."></textarea>

                    <div class="d-flex align-items-center">
                        <button id="send_diskusi" type="button" class="btn bg-teal-400 btn-labeled btn-labeled-right ml-auto"><b><i class="icon-paperplane"></i></b> Send</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /dashboard content -->

</div>
<!-- /.content -->

<script src="https://www.gstatic.com/firebasejs/7.5.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/6.2.0/firebase-database.js"></script>
<script>
    $(document).ready(function() {
        function fn_get_params(name) {
            var res = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (res == null) {
                return null;
            }

            return decodeURI(res[1]) || 0;
        }

        var config = {
            apiKey: "AIzaSyBUGwkWtR4nciE-rZlMiiILlEkzkEU7fhw",
            authDomain: "e-learning-f7320.firebaseapp.com",
            databaseURL: "https://e-learning-f7320-default-rtdb.firebaseio.com",
            storageBucket: "e-learning-f7320.appspot.com"
        };
        firebase.initializeApp(config);

        var ref = firebase.database().ref();
        // const refIdPertemuan = fn_get_params('id_pertemuan');
        const refIdPertemuan = $('input#id_kbm').val();
        ref.child("discussionBelajarSiswa").child(refIdPertemuan).on("value", function(snapshot) {
            var discussionList = [];
            var firebaseData = snapshot.val();
            // const refIdPertemuan = fn_get_params('id_pertemuan');
            const refIdPertemuan = $('input#id_kbm').val();
            let listDiscussion = firebaseData;

            try {
                Object.keys(listDiscussion).forEach(function eachKey(key) {
                    const item = listDiscussion[key];
                    discussionList.push(item);
                });
            } catch (error) {}

            if (discussionList.length > 0) {
                discussionList = discussionList.sort((a, b) => new Date(b.create_date) - new Date(a.create_date));
            }

            $('#_discussion_list').empty();
            var discussion_list = '';
            for (i = 0; i < discussionList.length; i++) {
                discussion_list += '<li class="media">';

                discussion_list += '<div class="mr-3">';
                discussion_list += '<a href="#" data-toggle="tooltip" data-placement="top" title="' + discussionList[i].user + '"><img src="/images/' + discussionList[i].user_foto + '" class="rounded-circle" width="40" height="40" alt="' + discussionList[i].user + '"></a>';
                discussion_list += '</div>';

                discussion_list += '<div class="media-body">';
                discussion_list += '<div class="font-size-sm text-muted mb-2">' + discussionList[i].user + '</div>';
                discussion_list += '<div class="media-chat-item">' + discussionList[i].user_diskusi + '</div>';
                discussion_list += '<div class="font-size-sm text-muted mt-2">' + discussionList[i].create_date + '</div>';
                discussion_list += '</div>';

                discussion_list += '</li>';
            }
            $('#_discussion_list').html(discussion_list);
        });
    });

    function fn_open_new_tab(url) {
        window.open(url, "_blank");
    }

    /*
    function fn_reload_discussion() {
        var id_sekolah = $('input#diskusi_id_sekolah').val();
        var url_sekolah = $('input#diskusi_url_sekolah').val();
        var id_materi = '2731';
        var id_sub_materi = '18707';
        var user = $('input#diskusi_user').val();
        var user_foto = $('input#diskusi_user_foto').val();
        var user_diskusi = $('textarea#diskusi_user_diskusi').val();

        $.ajax({
                type: 'POST',
                url: 'http://localhost/disekolah.id-prd/app/app/belajar_siswa/get_discussion',
                data: {
                    "id_sekolah": id_sekolah,
                    "url_sekolah": url_sekolah,
                    "id_materi": id_materi,
                    "id_sub_materi": id_sub_materi,
                    "user": user,
                    "user_foto": user_foto,
                    "user_diskusi": user_diskusi,
                },
                dataType: 'JSON',
                crossDomain: true,
                cache: false,
            })
            .done(function(response) {
                $('#_discussion_list').empty();
                $('[data-toggle="tooltip"]').tooltip({
                    animated: 'fade',
                    placement: 'top',
                    html: true
                });

                var discussion_list = '';
                for (i = 0; i < response.length; i++) {
                    discussion_list += '<li class="media">';

                    discussion_list += '<div class="mr-3">';
                    discussion_list += '<a href="#" data-toggle="tooltip" data-placement="top" title="' + response[i].user + '"><img src="' + response[i].user_foto + '" class="rounded-circle" width="40" height="40" alt="' + response[i].user + '"></a>';
                    discussion_list += '</div>';

                    discussion_list += '<div class="media-body">';
                    discussion_list += '<div class="media-chat-item">' + response[i].user_diskusi + '</div>';
                    discussion_list += '<div class="font-size-sm text-muted mt-2">' + response[i].create_date + '</div>';
                    discussion_list += '</div>';

                    discussion_list += '</li>';
                    // console.log(response[i]);
                }

                $('#_discussion_list').html(discussion_list);
            })
            .fail(function(err) {
                console.log(err);
                // alert('Diskusi gagal terload ulang, silahkan coba beberapa saat lagi');
            });
    }
    */

    $(document).ready(function() {
        $('a[data-toggle="tooltip"]').tooltip({
            animated: 'fade',
            placement: 'top',
            html: true
        });

        $('#send_diskusi').on('click', function() {
            var id_materi = '0';
            var id_sub_materi = $('input#id_kbm').val();
            var user = $('input#diskusi_user').val();
            var user_foto = "images/no-profile.png";
            var user_diskusi = $('textarea#diskusi_user_diskusi').val();

            if (!user_diskusi) {
                alert('Silahkan isi form diskusi terlebih dahulu!');

            } else {
                try {
                    const rightNow = new Date();
                    const res = rightNow.toISOString().slice(0, 19);
                    const create_date = res.replace("T", " ");

                    const uniqId = Math.floor(Math.random() * 1000000);
                    let data = {
                        "id": uniqId,
                        "id_sekolah": "",
                        "url_sekolah": "",
                        "id_materi": id_materi,
                        "id_sub_materi": id_sub_materi,
                        "user": user,
                        "user_foto": "no-profile.png",
                        "user_diskusi": user_diskusi,
                        "create_date": create_date,
                    };
                    firebase.database().ref('discussionBelajarSiswa/' + id_sub_materi + '/' + uniqId).set(data);

                } catch (error) {
                    console.log(error);
                    alert('Diskusi gagal terkirim, silahkan coba beberapa saat lagi. Error: ' + error);
                }

                // $.ajax({
                //     type: 'POST',
                //     url: 'http://localhost/disekolah.id-prd/app/app/belajar_siswa/save_discussion', 
                //     data: {
                //         "id_sekolah": id_sekolah,
                //         "url_sekolah": url_sekolah,
                //         "id_materi": id_materi,
                //         "id_sub_materi": id_sub_materi,
                //         "user": user,
                //         "user_foto": user_foto,
                //         "user_diskusi": user_diskusi,
                //     },
                //     dataType: 'JSON',
                //     crossDomain: true,
                //     cache: false,  
                // })
                // .done(function(response){
                //     $('#_discussion_list').empty();
                //     $('[data-toggle="tooltip"]').tooltip({
                //         animated: 'fade',
                //         placement: 'top',
                //         html: true
                //     });

                //     var discussion_list = '';
                //     for (i = 0; i < response.length; i++) {
                //         discussion_list += '<li class="media">';

                //             discussion_list += '<div class="mr-3">';
                //                 discussion_list += '<a href="#" data-toggle="tooltip" data-placement="top" title="'+response[i].user+'"><img src="'+response[i].user_foto+'" class="rounded-circle" width="40" height="40" alt="'+response[i].user+'"></a>';
                //             discussion_list += '</div>';

                //             discussion_list += '<div class="media-body">';
                //                 discussion_list += '<div class="media-chat-item">'+response[i].user_diskusi+'</div>';
                //                 discussion_list += '<div class="font-size-sm text-muted mt-2">'+response[i].create_date+'</div>';
                //             discussion_list += '</div>';

                //         discussion_list += '</li>';
                //         // console.log(response[i]);
                //     }

                //     $('#_discussion_list').html(discussion_list);
                //     $('textarea#diskusi_user_diskusi').val('');
                // })
                // .fail(function() {
                //     alert('Diskusi gagal terkirim, silahkan coba beberapa saat lagi');
                //     $('textarea#diskusi_user_diskusi').val('');
                // });
            }
        });
    });

    // Removed Temporary
    // setInterval(function() {
    //     fn_reload_discussion(); 
    // }, 10000);
</script>
@endsection

@section('styles')
<style>
    .ck-editor__editable_inline {
        min-height: 200px;
    }
</style>
@endsection

@section('scripts')
<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>
<script>
    ClassicEditor
        .create(document.querySelector('#description'))
        .catch(error => {
            console.error(error);
        });
</script>
@endsection