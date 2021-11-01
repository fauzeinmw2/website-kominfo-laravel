@extends('backend.layouts.index')

@section('title', 'Data Berita')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Berita</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Kelola Data</a></li>
            <li class="breadcrumb-item active"> Berita</li>
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
              <a href="{{route('berita.create')}}" class="btn btn-primary" role="button" title="Tambah Berita"><i class="fas fa-plus"></i>  Tambah Berita </a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Judul</th>
                    <th>Tanggal</th>
                    <th>Tools</th>
                  </tr>
                </thead>
                <tbody>

                  <?php 
                    $no = 1;
                  ?>

                @foreach ($berita as $brt)

                  <tr>
                    <td><?= $no++;?></td>
                    <td>{{$brt->judul}}</td>
                    <td>{{Carbon\Carbon::parse($brt->tanggal)->isoFormat('D MMMM Y')}}</td>
                    <td>
                      <a href="{{route('berita.edit', ['id'=>$brt->id])}}" class="btn btn-success" role="button" title="Ubah Data"><i class="fas fa-edit"></i> Ubah</a>

                      <a onclick="return confirm('Anda yakin hapus?')" href="{{route('berita.delete', ['id'=>$brt->id])}}" class="btn btn-danger" role="button" title="Hapus Data"><i class="fas fa-trash"></i> Hapus</a>
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