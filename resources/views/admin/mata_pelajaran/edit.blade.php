@extends('layouts.app')

@section('content')

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card p-3">
                    <form method="post" action="{{ route('admin.mata-pelajaran.update', [$kelas]) }}" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        <input type="hidden" name="id" value="{{ $kelas->id }}" />

                        <h4>Perbarui Data</h4>
                        <hr />

                        <div class="form-group row border-bottom pb-2">
                            <label for="nama_mapel" class="col-sm-2 col-form-label">Nama</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="nama_mapel" name="nama_mapel" value="{{ $kelas->nama_mapel }}" placeholder="Masukkan Nama Mata Pelajaran">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="kode_mapel" class="col-sm-2 col-form-label">Kode</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="kode_mapel" name="kode_mapel" value="{{ $kelas->kode_mapel }}" placeholder="Masukkan Kode Mapel">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="kategori_mapel" class="col-sm-2 col-form-label">Kategori</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="kategori_mapel">
                                    <option @if ($kelas->kategori_mapel == "Normatif")selected="selected"@endif value="Normatif">Normatif</option>
                                    <option @if ($kelas->kategori_mapel == "Non Formal")selected="selected"@endif value="Non Formal">Non Formal</option>
                                    <option @if ($kelas->kategori_mapel == "Kategori A")selected="selected"@endif value="Kategori A">Kategori A</option>
                                    <option @if ($kelas->kategori_mapel == "Kategori B")selected="selected"@endif value="Kategori B">Kategori B</option>
                                    <option @if ($kelas->kategori_mapel == "Kategori C")selected="selected"@endif value="Kategori C">Kategori C</option>
                                    <option @if ($kelas->kategori_mapel == "Mulok")selected="selected"@endif value="Mulok">Mulok</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="keterangan" class="col-sm-2 col-form-label">Keterangan</label>
                            <div class="col-sm-10">
                                <input text="text" class="form-control" id="keterangan" name="keterangan" value="{{ $kelas->keterangan }}" placeholder="Masukkan Keterangan">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="status" class="col-sm-2 col-form-label">Status</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="status">
                                    <option @if ($kelas->status == "1")selected="selected"@endif value="1">Aktif</option>
                                    <option @if ($kelas->status == "0")selected="selected"@endif value="0">Tidak Aktif</option>
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