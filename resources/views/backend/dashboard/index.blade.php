@extends('backend.layouts.index')

@section('title', 'Dashboard')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<!-- Content Header (Page header) -->
	<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"><i class="nav-icon fas fa-home"></i> HOME</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>

	<!-- Main content -->
	<section class="content">
    <div class="row">
      <div class="col-md-3 col-sm-6 col-12">
    		<div class="small-box bg-info">
          <div class="inner">
            <h3>{{$jadmin}}</h3>
            <p>Admin</p>
          </div>
          <div class="icon">
            <i class="fas fa-users-cog"></i>
          </div>
          <a href="#" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

      <div class="col-md-3 col-sm-6 col-12">
        <div class="small-box bg-success">
          <div class="inner">
            <h3>{{$jberita}}</h3>
            <p>Berita</p>
          </div>
          <div class="icon">
            <i class="fas fa-newspaper"></i>
          </div>
          <a href="#" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>

      <div class="col-md-3 col-sm-6 col-12">
        <div class="small-box bg-danger">
          <div class="inner">
            <h3>{{$jpengumuman}}</h3>
            <p>Pengumuman</p>
          </div>
          <div class="icon">
            <i class="fas fa-bullhorn"></i>
          </div>
          <a href="#" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
          </a>
        </div>
      </div>
    </div>
	</section>
	<!-- /.Main content -->

</div>
<!-- /.content-wrapper -->

@endsection