@extends('layouts.app')

@section('content')

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card p-3">
                    <form method="post" action="{{ route('admin.kelas.store') }}" enctype="multipart/form-data">
                        @csrf
                        <h4>Tambah Data</h4>
                        <hr />
                        <div class="form-group row border-bottom pb-2">
                            <label for="kelas" class="col-sm-2 col-form-label">Kelas</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="kelas" name="kelas" value="{{ old('kelas') }}" placeholder="Masukkan Kelas">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="nama_wali_kelas" class="col-sm-2 col-form-label">Nama Wali Kelas</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="nama_wali_kelas" name="nama_wali_kelas" value="{{ old('nama_wali_kelas') }}" placeholder="Masukkan Nama Wali Kelas">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="total_siswa" class="col-sm-2 col-form-label">Jumlah Siswa</label>
                            <div class="col-sm-10">
                                <input required text="number" class="form-control" id="total_siswa" name="total_siswa" value="{{ old('total_siswa') }}" placeholder="Masukkan Jumlah Siswa">
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