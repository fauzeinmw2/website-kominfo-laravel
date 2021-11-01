@extends('backend.layouts.index')

@section('title', 'Data Pimpinan')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Pimpinan</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Kelola Data</a></li>
            <li class="breadcrumb-item active"> Pimpinan</li>
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
            @foreach ($pimpinan as $pmp)
                <a href="{{route('pimpinan.edit', ['id'=>$pmp->id])}}" class="btn btn-success" role="button" title="Ubah Data"><i class="fas fa-edit"></i> Ubah Pimpinan</a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Nama</th>
                    <th>Foto</th>
                    <th>Tools</th>
                  </tr>
                </thead>
                <tbody>

                  <?php 
                    $no = 1;
                  ?>
                  
                  <tr>
                    <td><?= $no++;?></td>
                    <td>{{$pmp->nama}}</td>
                    <td>
                        <img src="{{asset('image')}}/pimpinan/{{$pmp->foto}}" width="150">
                    </td>
                    <td>{!!$pmp->deskripsi!!}</td>
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