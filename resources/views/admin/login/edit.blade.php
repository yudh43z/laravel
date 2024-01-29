@extends('layouts.app')

@section('content')

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card p-3">
                    <form method="post" action="{{ route('admin.login.update', [$kelas]) }}" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        <input type="hidden" name="id" value="{{ $kelas->id }}" />

                        <h4>Perbarui Data</h4>
                        <hr />

                        <div class="form-group row border-bottom pb-2">
                            <label for="name" class="col-sm-2 col-form-label">Nama Lengkap</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="name" name="name" value="{{ $kelas->name }}" placeholder="Masukkan Nama Lengkap">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="email" name="email" value="{{ $kelas->email }}" placeholder="Masukkan Email">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="password" class="col-sm-2 col-form-label">Password (Kosongkan Apabila Tidak Dirubah)</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="password" name="password" value="" placeholder="Masukkan Password">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="role" class="col-sm-2 col-form-label">Role</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="role" id="role" onchange="changeRole();">
                                    <option @if ($kelas->role == "admin") selected="selected" @endif value="admin">Admin</option>
                                    <option @if ($kelas->role == "siswa") selected="selected" @endif value="siswa">Siswa</option>
                                    <option @if ($kelas->role == "guru") selected="selected" @endif value="guru">Guru</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2 guru" @if ($kelas->role != "guru")style="display: none;"@endif>
                            <label for="id_guru" class="col-sm-2 col-form-label">Pilih Guru</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="id_guru">
                                    @foreach ($list_guru as $lk)
                                    <option @if ($kelas->id_guru == $lk->id) selected="selected" @endif value="{{ $lk->id }}">{{ $lk->nama_pengajar }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2 siswa" @if ($kelas->role != "siswa")style="display: none;"@endif>
                            <label for="id_siswa" class="col-sm-2 col-form-label">Pilih Siswa</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="id_siswa">
                                    @foreach ($list_siswa as $lk)
                                    <option @if ($kelas->id_siswa == $lk->id) selected="selected" @endif value="{{ $lk->id }}">{{ $lk->nama }}</option>
                                    @endforeach
                                </select>
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

<script>
    function changeRole() {
        const role = $('#role').val()
        if (role == 'siswa') {
            $('.siswa').show()
            $('.guru').hide()
        } else if (role == 'guru') {
            $('.siswa').hide()
            $('.guru').show()
        } else {
            $('.siswa').hide()
            $('.guru').hide()
        }
    }
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