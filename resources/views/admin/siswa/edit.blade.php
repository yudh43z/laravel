@extends('layouts.app')

@section('content')

@php
$siswa = json_decode(json_encode($kelas), true);
@endphp

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card p-3">
                    <form method="post" action="{{ route('admin.siswa.update', [$kelas]) }}" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        <input type="hidden" name="id" value="{{ $kelas->id }}" />

                        <h4>Perbarui Data</h4>
                        <hr />

                        <div class="row">
                            <div class="col-sm-6">
                                @foreach ($list_form as $key => $form)
                                @if($key % 2 == 0)
                                <div class="form-group row border-bottom pb-2">
                                    <label for="{{ $form }}" class="col-sm-3 col-form-label">{{ \Illuminate\Support\Str::ucfirst(str_replace('_', ' ', $form)) }}</label>
                                    <div class="col-sm-9">
                                        @if ($form == "jns_kelamin")
                                        <select class="form-control" name="status">
                                            <option @if ($siswa[$form]=="P" ) selected="selected" @endif value="P">Pria</option>
                                            <option @if ($siswa[$form]=="W" ) selected="selected" @endif value="W">Wanita</option>
                                        </select>
                                        @elseif ($form == "tgl_lahir")
                                        <input required type="date" class="form-control" id="{{ $form }}" name="{{ $form }}" value="{{ $siswa[$form] }}" placeholder="Masukkan {{ \Illuminate\Support\Str::ucfirst(str_replace('_', ' ', $form)) }}">
                                        @elseif ($form == "kelas")
                                        <select class="form-control" name="kelas">
                                            @foreach ($list_kelas as $lk)
                                            <option @if ($siswa[$form]==$lk->kelas) selected="selected" @endif value="{{ $lk->kelas }}">{{ $lk->kelas }}</option>
                                            @endforeach
                                        </select>
                                        @else
                                        <input required type="text" class="form-control" id="{{ $form }}" name="{{ $form }}" value="{{ $siswa[$form] }}" placeholder="Masukkan {{ \Illuminate\Support\Str::ucfirst(str_replace('_', ' ', $form)) }}">
                                        @endif
                                    </div>
                                </div>
                                @endif
                                @endforeach
                            </div>
                            <div class="col-sm-6">
                                @foreach ($list_form as $key => $form)
                                @if($key % 2 != 0)
                                <div class="form-group row border-bottom pb-2">
                                    <label for="{{ $form }}" class="col-sm-3 col-form-label">{{ \Illuminate\Support\Str::ucfirst(str_replace('_', ' ', $form)) }}</label>
                                    <div class="col-sm-9">
                                        @if ($form == "password")
                                        <input required type="password" class="form-control" id="{{ $form }}" name="{{ $form }}" value="{{ $siswa[$form] }}" placeholder="Masukkan {{ \Illuminate\Support\Str::ucfirst(str_replace('_', ' ', $form)) }}">
                                        @elseif ($form == "status")
                                        <select class="form-control" name="status">
                                            <option @if ($siswa[$form]==1) selected="selected" @endif value="1">Aktif</option>
                                            <option @if ($siswa[$form]==0) selected="selected" @endif value="0">Tidak Aktif</option>
                                        </select>
                                        @else
                                        <input required type="text" class="form-control" id="{{ $form }}" name="{{ $form }}" value="{{ $siswa[$form] }}" placeholder="Masukkan {{ \Illuminate\Support\Str::ucfirst(str_replace('_', ' ', $form)) }}">
                                        @endif
                                    </div>
                                </div>
                                @endif
                                @endforeach
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success">Simpan</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content -->
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