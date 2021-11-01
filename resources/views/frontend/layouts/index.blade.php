<!DOCTYPE html>
<html lang="en">
<head>
	<title>@yield('title', 'KOMINFO SUMBAR')</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="{{asset('assets')}}/dist/img/logo-kominfo.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/fonts/fontawesome-5.0.8/css/fontawesome-all.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/css/util.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="{{asset('assets')}}/css/main.css">
<!--===============================================================================================-->

</head>
<body class="animsition">
	
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<div class="topbar">
				<div class="content-topbar container h-100">
					<div class="left-topbar">
						<span class="left-topbar-item flex-wr-s-c">
							<span>
								Sumatera Barat, Indonesia
							</span>
						</span>

						<a href="#" class="left-topbar-item">
							Contact
						</a>

						<a href="#" class="left-topbar-item" target="_blank">
							Log in
						</a>
					</div>

					<div class="right-topbar">
						<a href="#">
							<span class="fab fa-instagram"></span>
						</a>

						<a href="#">
							<span class="fab fa-facebook-f"></span>
						</a>

						<a href="#">
							<span class="fab fa-whatsapp"></span>
						</a>

						<a href="#">
							<span class="fab fa-youtube"></span>
						</a>
					</div>
				</div>
			</div>

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->		
				<div class="logo-mobile">
					<a href="#"><img src="{{asset('assets')}}/dist/img/banner-kominfo.jpg" alt="IMG-LOGO"></a>
				</div>

				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze m-r--8">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>

			<!-- Menu Mobile -->
			<div class="menu-mobile">
				<ul class="topbar-mobile">
					<li class="left-topbar">
						<span class="left-topbar-item flex-wr-s-c">
							<span>
								Sumatera Barat, Indonesia
							</span>
						</span>
					</li>

					<li class="left-topbar">
						<a href="#" class="left-topbar-item">
							Contact
						</a>

						<a href="#" class="left-topbar-item" target="_blank">
							Log in
						</a>
					</li>

					<li class="right-topbar">
						<a href="#">
							<span class="fab fa-instagram"></span>
						</a>

						<a href="#">
							<span class="fab fa-facebook-f"></span>
						</a>

						<a href="#">
							<span class="fab fa-whatsapp"></span>
						</a>

						<a href="#">
							<span class="fab fa-youtube"></span>
						</a>
					</li>
				</ul>

				<ul class="main-menu-m">
					<li>
						<a href="{{route('home')}}">Home</a>
					</li>

					<li>
						<a href="#">Profil</a>
						<ul class="sub-menu-m">
							<li><a href="{{route('h.pimpinan')}}">Pimpinan</a></li>
							<li><a href="{{route('h.struktur')}}">Struktur Organisasi</a></li>
							<li><a href="{{route('h.visimisi')}}">Visi Misi</a></li>
							<li><a href="{{route('h.sejarah')}}">Sejarah</a></li>
						</ul>

						<span class="arrow-main-menu-m">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</span>
					</li>

					<li>
						<a href="{{route('b.index')}}">Berita</a>
					</li>

					<li>
						<a href="{{route('p.index')}}">Pengumuman</a>
					</li>

					<li>
						<a href="{{route('h.galeri')}}">Galeri</a>
					</li>
				</ul>
			</div>
			
			<!--  -->
			<div class="wrap-logo container">
				<!-- Logo desktop -->		
				<div class="logo" style="margin:0 auto;">
					<a href="#"><img src="{{asset('assets')}}/dist/img/banner-kominfo.jpg" alt="LOGO"></a>
				</div>	
			</div>	
			
			<!--  -->
			<div class="wrap-main-nav">
				<div class="main-nav" style="background-color: #1474ae;">
					<!-- Menu desktop -->
					<nav class="menu-desktop">
						<a class="logo-stick" href="index.html">
							<img src="{{asset('assets')}}/dist/img/logo-kominfo.png" alt="LOGO">
						</a>

						<ul class="main-menu">
							<li>
								<a href="{{route('home')}}">Home</a>
							</li>

							<li>
								<a href="#" class="dropdown2">Profil</a>
								<ul class="sub-menu">
									<li><a href="{{route('h.pimpinan')}}">Pimpinan</a></li>
									<li><a href="{{route('h.struktur')}}">Struktur Organisasi</a></li>
									<li><a href="{{route('h.visimisi')}}">Visi Misi</a></li>
									<li><a href="{{route('h.sejarah')}}">Sejarah</a></li>
								</ul>
							</li>

							<li class="mega-menu-item">
								<a href="{{route('b.index')}}" class="dropdown2">Berita</a>

								<div class="sub-mega-menu">
									<div class="nav flex-column nav-pills" role="tablist">
										<a class="nav-link active" data-toggle="pill" href="#" role="tab">Berita Terbaru</a>
									</div>

									<div class="tab-content">
										<div class="tab-pane show active" id="news-0" role="tabpanel">
										@foreach ($ly_berita->chunk(4) as $beritaChunk)
											<div class="row">
												@foreach($beritaChunk as $berita)
												<div class="col-3">
													<!-- Item post -->	
													<div>
														<a href="{{route('b.show', ['slug'=>$berita->slug])}}" class="wrap-pic-w hov1 trans-03">
															<img src="{{asset('image')}}/berita/{{$berita->gambar}}" style="height: 110px;">
														</a>

														<div class="p-t-10">
															<h5 class="p-b-5">
																<a href="{{route('b.show', ['slug'=>$berita->slug])}}" class="f1-s-5 cl3 hov-cl10 trans-03">
																	{{$berita->judul}}
																</a>
															</h5>

															<span class="cl8">
																<a href="{{route('b.tag', ['tag'=>$berita->kategori])}}" class="f1-s-6 cl8 hov-cl10 trans-03">
																	{{$berita->kategori}}
																</a>

																<span class="f1-s-3 m-rl-3">
																	~
																</span>

																<span class="f1-s-3">
																	{{$berita->tanggal}}
																</span>
															</span>
														</div>
													</div>
												</div>
												@endforeach
											</div>
											@endforeach
										</div>
									</div>
								</div>
							</li>

							<li class="mega-menu-item">
								<a href="{{route('p.index')}}" class="dropdown2">Pengumuman</a>

								<div class="sub-mega-menu">
									<div class="nav flex-column nav-pills" role="tablist">
										<a class="nav-link active" data-toggle="pill" href="#" role="tab">Pengumuman Terbaru</a>
									</div>

									<div class="tab-content">
										<div class="tab-pane show active" id="news-0" role="tabpanel">
											@foreach($ly_pengumuman->chunk(4) as $pengumumanChunk)
											<div class="row">
												@foreach($pengumumanChunk as $pengumuman)
												<div class="col-3">
													<!-- Item post -->	
													<div>
														<a href="{{route('p.show', ['slug'=>$pengumuman->slug])}}" class="wrap-pic-w hov1 trans-03">
															<img src="{{asset('image')}}/pengumuman/{{$pengumuman->gambar}}" style="height: 110px;">
														</a>

														<div class="p-t-10">
															<h5 class="p-b-5">
																<a href="{{route('p.show', ['slug'=>$pengumuman->slug])}}" class="f1-s-5 cl3 hov-cl10 trans-03">
																	{{$pengumuman->judul}}
																</a>
															</h5>

															<span class="cl8">
																<a href="{{route('p.show', ['slug'=>$pengumuman->slug])}}" class="f1-s-6 cl8 hov-cl10 trans-03">
																	Pengumuman
																</a>

																<span class="f1-s-3 m-rl-3">
																	~
																</span>

																<span class="f1-s-3">
																	{{$pengumuman->tanggal}}
																</span>
															</span>
														</div>
													</div>
												</div>
												@endforeach
											</div>
											@endforeach
										</div>
									</div>
								</div>
							</li>

							<li class="main-menu">
								<a href="{{route('h.galeri')}}">Galeri</a>
							</li>
							
						</ul>
					</nav>
				</div>
			</div>	
		</div>
	</header>

	 <!-- Content -->
	 @yield('content')
    <!-- /Content -->

	<!-- Footer -->
	<footer>
		<div class="bg2 p-t-40 p-b-25">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 p-b-20">
						<div class="size-h-3 flex-s-c">
							<a href="#">
								<img class="max-s-full" src="{{asset('assets')}}/dist/img/banner-kominfo.png" alt="LOGO">
							</a>
						</div>

						<div>
							<p class="f1-s-1 cl11 p-b-16">
								KOMINFO SUMATERA BARAT
							</p>

							<p class="f1-s-1 cl11 p-b-16">
								Alamat : Jl. Pramuka, No.11 A Padang, Provinsi Sumatera Barat.
							</p>

							<p class="f1-s-1 cl11 p-b-16">
								Telp : (0751) 89713615.
							</p>

							<p class="f1-s-1 cl11 p-b-16">
								Email : diskominfo@sumbarprov.go.id
							</p>

							<p class="f1-s-1 cl11 p-b-16">
								Power By : Fauzein Mulya Warman	
							</p>

							<div class="p-t-15">
								<a href="#" class="fs-18 cl11 hov-cl10 trans-03 m-r-8">
									<span class="fab fa-instagram"></span>
								</a>

								<a href="#" class="fs-18 cl11 hov-cl10 trans-03 m-r-8">
									<span class="fab fa-facebook-f"></span>
								</a>

								<a href="#" class="fs-18 cl11 hov-cl10 trans-03 m-r-8">
									<span class="fab fa-whatsapp"></span>
								</a>

								<a href="#" class="fs-18 cl11 hov-cl10 trans-03 m-r-8">
									<span class="fab fa-youtube"></span>
								</a>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-lg-4 p-b-20" style="margin-top: 80px;">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.3090055395896!2d100.35497781432359!3d-0.9155010355912495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4b8ce92f7f2b7%3A0x4bdb53a41adafb75!2sDinas%20Kominfo%20Prov.%20Sumbar!5e0!3m2!1sen!2sid!4v1627106589479!5m2!1sen!2sid" width="300" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
					</div>

					<div class="col-sm-6 col-lg-4 p-b-20" >
						<div class="size-h-3 flex-s-c">
							<h5 class="f1-m-7 cl0">
								Profil
							</h5>
						</div>

						<ul class="m-t--12">
							<li class="how-bor1 p-rl-5 p-tb-10">
								<a href="{{route('h.pimpinan')}}" class="f1-s-5 cl11 hov-cl10 trans-03 p-tb-8">
									Pimpinan
								</a>
							</li>

							<li class="how-bor1 p-rl-5 p-tb-10">
								<a href="{{route('h.struktur')}}" class="f1-s-5 cl11 hov-cl10 trans-03 p-tb-8">
									Struktur Organisasi
								</a>
							</li>

							<li class="how-bor1 p-rl-5 p-tb-10">
								<a href="{{route('h.visimisi')}}" class="f1-s-5 cl11 hov-cl10 trans-03 p-tb-8">
									Visi Misi
								</a>
							</li>

							<li class="how-bor1 p-rl-5 p-tb-10">
								<a href="{{route('h.sejarah')}}" class="f1-s-5 cl11 hov-cl10 trans-03 p-tb-8">
									Sejarah
								</a>
							</li>

							<li class="how-bor1 p-rl-5 p-tb-10">
								<a href="{{route('h.galeri')}}" class="f1-s-5 cl11 hov-cl10 trans-03 p-tb-8">
									Galeri
								</a>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>

		<div class="bg11">
			<div class="container size-h-4 flex-c-c p-tb-15">
				<span class="f1-s-1 cl0 txt-center">
					Copyright © 2021 All rights reserved | KOMINFO Sumatera Barat</a>
				</span>
			</div>
		</div>
	</footer>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<span class="fas fa-angle-up"></span>
		</span>
	</div>

	<!-- Modal Video 01-->
	<div class="modal fade" id="modal-video-01" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document" data-dismiss="modal">
			<div class="close-mo-video-01 trans-0-4" data-dismiss="modal" aria-label="Close">&times;</div>

			<div class="wrap-video-mo-01">
				<div class="video-mo-01">
					<iframe src="https://www.youtube.com/embed/wJnBTPUQS5A?rel=0" allowfullscreen></iframe>
				</div>
			</div>
		</div>
	</div>

<!--===============================================================================================-->	
	<script src="{{asset('assets')}}/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="{{asset('assets')}}/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="{{asset('assets')}}/vendor/bootstrap/js/popper.js"></script>
	<script src="{{asset('assets')}}/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="{{asset('assets')}}/js/main.js"></script>

</body>
</html>