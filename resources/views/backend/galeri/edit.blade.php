@extends('backend.layouts.index')

@section('title', 'Ubah Galeri')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Ubah Galeri
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
            <form action="{{route('galeri.update', ['id'=>$galeri->id])}}" method="post" enctype="multipart/form-data">
		        @csrf
              <div class="box-body">
                <input type="hidden" name="id" value="{{$galeri->id}}">

                <div class="box-body">
                <div class="form-group">
                  <label>Judul</label>
                  <input type="text" name="judul" class="form-control" value="{{$galeri->judul}}">
                </div>   
                
                <div class="form-group">
                  <label>Tanggal</label>
                  <input type="date" name="tanggal" class="form-control" value="{{$galeri->tanggal}}">
                </div>

                <div class="form-group">
                    @if($galeri->foto)
                        <img src="/image/galeri/{{$galeri->foto}}" width="150">
                        <input type="hidden" name="gambarold" class="form-control" value="{{$galeri->foto}}">
                    @else
                        <p>Kamu belum punya Foto</p>
                    @endif

                    <br><br><br>

                  <label>Upload Foto</label>
                  <input type="file" name="foto" class="form-control">
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