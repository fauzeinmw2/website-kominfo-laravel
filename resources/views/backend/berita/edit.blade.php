@extends('backend.layouts.index')

@section('title', 'Ubah Berita')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Ubah Berita
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <!-- /.box-header -->
            <!-- form start -->
            <form action="{{route('berita.update', ['id'=>$berita->id])}}" method="post" enctype="multipart/form-data">
		        @csrf
              <div class="box-body">
                <input type="hidden" name="id" value="{{$berita->id}}">

                <div class="box-body">
                <div class="form-group">
                  <label>Judul</label>
                  <input type="text" name="judul" class="form-control" value="{{$berita->judul}}">
                </div>         
               
                <div class="form-group">
                  <label>Isi Berita</label>
                  <textarea class="ckeditor" id="ckeditor" name="isi" required>
                    {{$berita->isi}}
                  </textarea>
                </div>

                <div class="form-group">

                    @if($berita->gambar)
                        <img src="/image/berita/{{$berita->gambar}}" width="150">
                        <input type="hidden" name="gambarold" class="form-control" value="{{$berita->gambar}}">
                    @else
                        <p>Kamu belum punya thumbnail</p>
                    @endif

                    <br><br><br>

                  <label>Upload Thumbail</label>
                  <input type="file" name="gambar" class="form-control">
                </div>

                <div class="form-group">
                  <label>Kategori</label>
                  <input type="text" name="kategori" class="form-control" value="{{$berita->kategori}}">
                </div>

                <div class="form-group">
                  <label>Tanggal</label>
                  <input type="date" name="tanggal" class="form-control" value="{{$berita->tanggal}}">
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-primary" title="Simpan Data" name="ubah"> <i class="glyphicon glyphicon-floppy-disk"></i> Simpan</button>
              </div>
            </form>
          </div>
          <!-- /.box -->
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
<!-- /.content-wrapper -->

@endsection