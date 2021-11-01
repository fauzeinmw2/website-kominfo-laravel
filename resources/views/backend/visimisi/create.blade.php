@extends('backend.layouts.index')

@section('title', 'Tambah Visi-Misi')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Tambah Visi Misi
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
            <form action="{{route('visimisi.store')}}" method="post" enctype="multipart/form-data">
		        @csrf
              <div class="box-body">         
               
                <div class="form-group">
                  <label>Visi</label>
                  <textarea class="ckeditor" id="ckeditor" name="visi"></textarea>
                </div>

                <div class="form-group">
                  <label>Misi</label>
                  <textarea class="ckeditor" id="ckeditor" name="misi"></textarea>
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