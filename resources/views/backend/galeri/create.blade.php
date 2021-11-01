@extends('backend.layouts.index')

@section('title', 'Tambah Galeri')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Tambah Galeri
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
            <form action="{{route('galeri.store')}}" method="post" enctype="multipart/form-data">
		        @csrf
              <div class="box-body">

                <div class="form-group">
                  <label>Upload Foto</label>
                  <input type="file" name="foto" class="form-control" required>
                </div>

                <div class="form-group">
                  <label>Judul</label>
                  <input type="text" name="judul" class="form-control" placeholder="Judul...">
                </div>         

                <div class="form-group">
                  <label>Tanggal</label>
                  <input type="date" name="tanggal" class="form-control">
                </div>
              
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-primary" title="Simpan Data"> <i class="glyphicon glyphicon-floppy-disk"></i> Simpan</button>
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