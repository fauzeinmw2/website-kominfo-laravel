@extends('backend.layouts.index')

@section('title', 'Ubah Pimpinan')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Ubah Pimpinan
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
            <form action="{{route('pimpinan.update', ['id'=>$pimpinan->id])}}" method="post" enctype="multipart/form-data">
		        @csrf
              <div class="box-body">
                <input type="hidden" name="id" value="{{$pimpinan->id}}">

                <div class="box-body">
                <div class="form-group">
                  <label>Nama</label>
                  <input type="text" name="nama" class="form-control" value="{{$pimpinan->nama}}">
                </div>         
               
                <div class="form-group">
                  <label>Deskripsi</label>
                  <textarea class="ckeditor" id="ckeditor" name="deskripsi" required>
                    {{$pimpinan->deskripsi}}
                  </textarea>
                </div>

                <div class="form-group">

                    @if($pimpinan->foto)
                        <img src="/image/pimpinan/{{$pimpinan->foto}}" width="250">
                        <input type="hidden" name="gambarold" class="form-control" value="{{$pimpinan->foto}}">
                    @else
                        <p>Foto Belum Diinputkan</p>
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