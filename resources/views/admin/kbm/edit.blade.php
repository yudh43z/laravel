@extends('layouts.app')

@section('content')

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card p-3">
                    <form method="post" action="{{ route('admin.kbm.update', [$kelas]) }}" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        <input type="hidden" name="id" value="{{ $kelas->id }}" />

                        <h4>Perbarui Data</h4>
                        <hr />

                        <div class="form-group row border-bottom pb-2">
                            <label for="gambar" class="col-sm-2 col-form-label">Gambar (Abaikan apabila tidak ingin diperbarui)</label>
                            <div class="col-sm-10">
                                @if ($kelas->gambar)
                                <img src="{{ Storage::url('gambar'.$kelas->gambar) }}" style="height: 200px; width: auto;" class="mb-2" />
                                @endif
                                <input type="file" class="" id="gambar" name="gambar">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="judul" name="judul" value="{{ $kelas->judul }}" placeholder="Masukkan Judul">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="keterangan" class="col-sm-2 col-form-label">Keterangan</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="keterangan" name="keterangan" value="{{ $kelas->keterangan }}" placeholder="Masukkan Keterangan">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="id_kelas" class="col-sm-2 col-form-label">Kelas</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="id_kelas">
                                    @foreach ($list_kelas as $lk)
                                    <option @if ($lk->id == $kelas->id_kelas) selected="selected" @endif value="{{ $lk->id }}">{{ $lk->kelas }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="id_mapel" class="col-sm-2 col-form-label">Mata Pelajaran</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="id_mapel">
                                    @foreach ($list_mapel as $lk)
                                    <option @if ($lk->id == $kelas->id_mapel) selected="selected" @endif value="{{ $lk->id }}">{{ $lk->nama_mapel }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="materi" class="col-sm-2 col-form-label">Pembahasan Materi</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="materi" id="materi" style="height: 150px;">{{ $kelas->materi }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="video" class="col-sm-2 col-form-label">Video Materi<br />(Kode URL Youtube)</label>
                            <div class="col-sm-10">
                                <input required text="text" class="form-control" id="video" name="video" value="{{ $kelas->video }}" placeholder="Masukkan Video">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="pdf" class="col-sm-2 col-form-label">Lampiran PDF (Abaikan apabila tidak ingin diperbarui)</label>
                            <div class="col-sm-10">
                                @if ($kelas->pdf)
                                <embed src="{{ Storage::url('pdf'.$kelas->pdf) }}" type="application/pdf" width="100%" height="300px" class="mb-2" />
                                @endif
                                <input type="file" class="" id="pdf" name="pdf">
                            </div>
                        </div>
                        <div class="form-group row border-bottom pb-2">
                            <label for="id_guru" class="col-sm-2 col-form-label">Guru</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="id_guru">
                                    @foreach ($list_guru as $lk)
                                    <option @if ($lk->id == $kelas->id_guru) selected="selected" @endif value="{{ $lk->id }}">{{ $lk->nama_pengajar }}</option>
                                    @endforeach
                                </select>
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