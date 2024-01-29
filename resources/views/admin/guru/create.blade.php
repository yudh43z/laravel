@extends('layouts.app')

@section('content')

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card p-3">
                    <form method="post" action="{{ route('admin.guru.store') }}" enctype="multipart/form-data">
                        @csrf
                        <h4>Tambah Data</h4>
                        <hr />
                        <div class="form-group row border-bottom pb-2">
                            <label for="nip" class="col-sm-2 col-form-label">NIP</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="nip" name="nip" value="{{ old('nip') }}" placeholder="Masukkan NIP">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="nama_pengajar" class="col-sm-2 col-form-label">Nama Pengajar</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="nama_pengajar" name="nama_pengajar" value="{{ old('nama_pengajar') }}" placeholder="Masukkan Nama Pengajar">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="kategori_pengajar" class="col-sm-2 col-form-label">Kategori Pengajar</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="kategori_pengajar">
                                    <option value="Guru Pelajaran">Guru Pelajaran</option>
                                    <option value="Guru Honorer">Guru Honorer</option>
                                    <option value="Staff Pengajar">Staff Pengajar</option>
                                    <option value="Asisten">Asisten</option>
                                    <option value="Lainnya">Lainnya</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="keterangan" class="col-sm-2 col-form-label">Keterangan</label>
                            <div class="col-sm-10">
                                <input text="text" class="form-control" id="keterangan" name="keterangan" value="{{ old('keterangan') }}" placeholder="Masukkan Keterangan">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="status" class="col-sm-2 col-form-label">Status</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="status">
                                    <option value="1">Aktif</option>
                                    <option value="0">Tidak Aktif</option>
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