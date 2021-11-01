@extends('backend.layouts.index')

@section('title', 'Data Sejarah')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Sejarah</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Kelola Data</a></li>
            <li class="breadcrumb-item active">Sejarah</li>
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
            @foreach ($sejarah as $sjr)
            <a href="{{route('sejarah.edit', ['id'=>$sjr->id])}}" class="btn btn-success" role="button" title="Ubah Data"><i class="fas fa-edit"></i> Ubah Sejarah</a>
            </div>

            <!-- /.card-header -->
            <div class="card-body">
              
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Isi Sejarah</th>
                  </tr>
                </thead>
                <tbody>

                  <?php 
                    $no = 1;
                  ?> 

                  <tr>
                    <td><?= $no++; ?></td>
                    <td>{!!$sjr->isi!!}</td>
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