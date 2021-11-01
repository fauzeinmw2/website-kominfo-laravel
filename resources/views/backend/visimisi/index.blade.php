@extends('backend.layouts.index')

@section('title', 'Data Visi-Misi')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Visi-Misi</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Kelola Data</a></li>
            <li class="breadcrumb-item active">Visi-Misi</li>
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
            @foreach ($visimisi as $vm)
            <a href="{{route('visimisi.edit', ['id'=>$vm->id])}}" class="btn btn-success" role="button" title="Ubah Data"><i class="fas fa-edit"></i> Ubah Visi Misi</a>
            </div>

            <!-- /.card-header -->
            <div class="card-body">
              
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Visi</th>
                    <th>Misi</th>
                  </tr>
                </thead>
                <tbody>

                  <?php 
                    $no = 1;
                  ?> 

                  <tr>
                    <td><?= $no++; ?></td>
                    <td>{!!$vm->visi!!}</td>
                    <td>{!!$vm->misi!!}</td>
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