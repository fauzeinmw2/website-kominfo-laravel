@extends('backend.layouts.index')

@section('title', 'Data Galeri')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Galeri</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Kelola Data</a></li>
            <li class="breadcrumb-item active"> Galeri</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
    
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <a href="{{route('galeri.create')}}" class="btn btn-primary" role="button" title="Tambah Galeri"><i class="fas fa-plus"></i>  Tambah Galeri </a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Foto</th>
                    <th>Judul</th>
                    <th>Tools</th>
                  </tr>
                </thead>
                <tbody>

                  <?php 
                    $no = 1;
                  ?>

                @foreach ($galeri as $glr)

                  <tr>
                    <td><?= $no++;?></td>
                    <td>
                    <img src="/image/galeri/{{$glr->foto}}" width="300">
                    </td>
                    <td>{{$glr->judul}}</td>
                    <td>
                      <a href="{{route('galeri.edit', ['id'=>$glr->id])}}" class="btn btn-success" role="button" title="Ubah Data"><i class="fas fa-edit"></i> Ubah</a>

                      <a onclick="return confirm('Anda yakin hapus?')" href="{{route('galeri.delete', ['id'=>$glr->id])}}" class="btn btn-danger" role="button" title="Hapus Data"><i class="fas fa-trash"></i> Hapus</a>
                    </td>
                  </tr>

                @endforeach

                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>
</div>
<!-- /.content-wrapper -->

@endsection