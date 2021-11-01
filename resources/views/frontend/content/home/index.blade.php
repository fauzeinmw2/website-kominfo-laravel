@extends('frontend.layouts.index')

@section('title', 'KOMINFO SUMBAR')

@section('content')
<!-- Headline -->
	<div class="container">
		<div class="bg0 flex-wr-sb-c p-rl-20 p-tb-8">
			<div class="f2-s-1 p-r-30 size-w-0 m-tb-6 flex-wr-s-c">
				<span class="text-uppercase cl2 p-r-8">
					Berita : 
				</span>
				@foreach($tb_berita->chunk(3) as $jbrtChunk)
				<span class="dis-inline-block cl6 slide100-txt pos-relative size-w-0" data-in="fadeInDown" data-out="fadeOutDown">
					@foreach($jbrtChunk as $jbrt)
					<span class="dis-inline-block slide100-txt-item animated visible-false">
						{{$jbrt->judul}}
					</span>
					@endforeach
				</span>
				@endforeach
			</div>

			<div class="pos-relative size-a-2 bo-1-rad-22 of-hidden bocl11 m-tb-6">
				<input class="f1-s-1 cl6 plh9 s-full p-l-25 p-r-45" type="text" name="search" placeholder="Search">
				<button class="flex-c-c size-a-1 ab-t-r fs-20 cl2 hov-cl10 trans-03">
					<i class="zmdi zmdi-search"></i>
				</button>
			</div>
		</div>
	</div>
		
	<!-- Feature post -->
	<section class="bg0">
		<div class="container">
			<div class="row m-rl--1">
				<div class="col-md-6 p-rl-1 p-b-2">
					<div class="bg-img1 size-a-3 how1 pos-relative" style="background-image: url({{asset('assets')}}/dist/img/galeri-kominfo.jpg);">
						<a href="{{route('h.galeri')}}" class="dis-block how1-child1 trans-03"></a>

						<div class="flex-col-e-s s-full p-rl-25 p-tb-20">
							<a href="{{route('h.galeri')}}" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
								Galeri
							</a>

							<h3 class="how1-child2 m-t-14 m-b-10">
								<a href="{{route('h.galeri')}}" class="how-txt1 size-a-6 f1-l-1 cl0 hov-cl10 trans-03">
									Explore KOMINFO Sumatera Barat
								</a>
							</h3>
						</div>
					</div>
				</div>

				<div class="col-md-6 p-rl-1">
					<div class="row m-rl--1">
						<div class="col-12 p-rl-1 p-b-2">
							<div class="bg-img1 size-a-4 how1 pos-relative" style="background-image: url({{asset('assets')}}/dist/img/kominfo.jpg);">
								<a href="{{route('h.visimisi')}}" class="dis-block how1-child1 trans-03"></a>

								<div class="flex-col-e-s s-full p-rl-25 p-tb-24">
									<a href="{{route('h.visimisi')}}" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
										Visi Misi
									</a>

									<h3 class="how1-child2 m-t-14">
										<a href="{{route('h.visimisi')}}" class="how-txt1 size-a-7 f1-l-2 cl0 hov-cl10 trans-03">
											Mengenal KOMINFO Sumatera Barat.
										</a>
									</h3>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-rl-1 p-b-2">
							<div class="bg-img1 size-a-5 how1 pos-relative" style="background-image: url({{asset('assets')}}/dist/img/struktur-kominfo.jpg);">
								<a href="{{route('h.struktur')}}" class="dis-block how1-child1 trans-03"></a>

								<div class="flex-col-e-s s-full p-rl-25 p-tb-20">
									<a href="{{route('h.struktur')}}" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
										Struktur Organisasi
									</a>

									<h3 class="how1-child2 m-t-14">
										<a href="{{route('h.struktur')}}" class="how-txt1 size-h-1 f1-m-1 cl0 hov-cl10 trans-03">
											Orang yang berperan penting di KOMINFO SUMBAR
										</a>
									</h3>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-rl-1 p-b-2">
							<div class="bg-img1 size-a-5 how1 pos-relative" style="background-image: url({{asset('assets')}}/dist/img/sejarah.jpg);">
								<a href="{{route('h.sejarah')}}" class="dis-block how1-child1 trans-03"></a>

								<div class="flex-col-e-s s-full p-rl-25 p-tb-20">
									<a href="{{route('h.sejarah')}}" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
										Sejarah
									</a>

									<h3 class="how1-child2 m-t-14">
										<a href="{{route('h.sejarah')}}" class="how-txt1 size-h-1 f1-m-1 cl0 hov-cl10 trans-03">
											Sejarah KOMINFO
										</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Post -->
	<section class="bg0 p-t-70">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 col-lg-8">
					<div class="p-b-20">
						<!-- Berita -->
						<div class="tab01 p-b-20">
							<div class="how2 how2-cl4 flex-s-c m-r-10 m-r-0-sr991">
								<h3 class="f1-m-2 cl3 tab01-title">
									Berita
								</h3>
							</div>

							<!-- Tab panes -->
							<div class="tab-content p-t-35">
								<!-- - -->
								<div class="tab-pane fade show active" id="tab1-1" role="tabpanel">
									<div class="row">
										<div class="col-sm-6 p-r-25 p-r-15-sr991">
											@foreach($berita as $brt)
											<div class="m-b-30">
												<a href="{{route('b.show', ['slug'=>$brt->slug])}}" class="wrap-pic-w hov1 trans-03">
													<img src="{{asset('image')}}/Berita/{{$brt->gambar}}" alt="IMG" height="170">
												</a>

												<div class="p-t-20">
													<h5 class="p-b-5">
														<a href="{{route('b.show', ['slug'=>$brt->slug])}}" class="f1-m-3 cl2 hov-cl10 trans-03">
															{{$brt->judul}}
														</a>
													</h5>

													<span class="cl8">
														<a href="{{route('b.tag', ['tag'=>$brt->kategori])}}" class="f1-s-6 cl8 hov-cl10 trans-03">
															{{$brt->kategori}}
														</a>

														<span class="f1-s-3 m-rl-3">
															~
														</span>

														<span class="f1-s-3">
															{{$brt->tanggal}}
														</span>
													</span>
												</div>
											</div>
											@endforeach
										</div>
									

										@foreach($tb_berita->chunk(3) as $beritaChunk)
											
										<div class="col-sm-6 p-r-25 p-r-15-sr991">
											<!-- Item post -->	
											@foreach($beritaChunk as $berita)
											<div class="flex-wr-sb-s m-b-30">
												<a href="{{route('b.show', ['slug'=>$berita->slug])}}" class="size-w-1 wrap-pic-w hov1 trans-03">
													<img src="{{asset('image')}}/berita/{{$berita->gambar}}" alt="IMG" height="70">
												</a>

												<div class="size-w-2">
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
											@endforeach
										</div>
										@endforeach
									</div>
								</div>	
							</div>
						</div>

						<!-- Pengumuman -->
						<div class="tab01 p-b-20">	
							<div class="how2 how2-cl4 flex-s-c m-r-10 m-r-0-sr991">
								<h3 class="f1-m-2 cl3 tab01-title">
									Pengumuman
								</h3>
							</div>

							<!-- Tab panes -->
							<div class="tab-content p-t-35">
								<!-- - -->
								<div class="tab-pane fade show active" id="tab1-1" role="tabpanel">
									<div class="row">
										<div class="col-sm-6 p-r-25 p-r-15-sr991">
											<!-- Item post -->
											@foreach($pengumuman as $peng)
											<div class="m-b-30">
												<a href="{{route('p.show', ['slug'=>$peng->slug])}}" class="wrap-pic-w hov1 trans-03">
													<img src="{{asset('image')}}/pengumuman/{{$peng->gambar}}" alt="IMG" height="170">
												</a>

												<div class="p-t-20">
													<h5 class="p-b-5">
														<a href="{{route('p.show', ['slug'=>$peng->slug])}}" class="f1-m-3 cl2 hov-cl10 trans-03">
															{{$peng->judul}} 
														</a>
													</h5>

													<span class="cl8">
														<span class="f1-s-3">
															{{$peng->tanggal}}
														</span>
													</span>
												</div>
											</div>
											@endforeach
										</div>

										@foreach($tb_pengumuman->chunk(3) as $pengumumanChunk)
										<div class="col-sm-6 p-r-25 p-r-15-sr991">
											@foreach($pengumumanChunk as $pengumuman)
											<!-- Item post -->	
											<div class="flex-wr-sb-s m-b-30">
												<a href="{{route('p.show', ['slug'=>$pengumuman->slug])}}" class="size-w-1 wrap-pic-w hov1 trans-03">
													<img src="{{asset('image')}}/pengumuman/{{$pengumuman->gambar}}" alt="IMG" height="70">
												</a>

												<div class="size-w-2">
													<h5 class="p-b-5">
														<a href="{{route('p.show', ['slug'=>$pengumuman->slug])}}" class="f1-s-5 cl3 hov-cl10 trans-03">
															{{$pengumuman->judul}}
														</a>
													</h5>

													<span class="cl8">
														<span class="f1-s-3">
															{{$pengumuman->tanggal}}
														</span>
													</span>
												</div>
											</div>
											@endforeach			
										</div>
										@endforeach
									</div>
								</div>		
							</div>
						</div>
					</div>
				</div>


				<!-- sidebar kanan -->
				<div class="col-md-10 col-lg-4">
					<div class="p-l-10 p-rl-0-sr991 p-b-20">

						<!-- pimpinan -->
						<div class="p-b-55">
							<div class="how2 how2-cl4 flex-s-c m-b-35">
								<h3 class="f1-m-2 cl3 tab01-title">
									Mengenal Pimpinan
								</h3>
							</div>

							@foreach($tb_pimpinan as $pimpinan)
							<div>
								<div class="wrap-pic-w pos-relative">
									<img src="{{asset('image')}}/pimpinan/{{$pimpinan->foto}}" alt="IMG">
								</div>

								<div class="p-tb-16 p-rl-25 bg3">
									<h5 class="p-b-5">
										<a href="{{route('h.pimpinan')}}" class="f1-m-3 cl0 hov-cl10 trans-03">
											Mengenal Pimpinan KOMINFO Sumatera Barat 
										</a>
									</h5>

									<span class="cl15">
										<a href="{{route('h.pimpinan')}}" class="f1-s-4 cl8 hov-cl10 trans-03">
											{{$pimpinan->nama}}
										</a>

										<span class="f1-s-3 m-rl-3">
											-
										</span>

										<span class="f1-s-3">
											Juli 17
										</span>
									</span>
								</div>
							</div>
							@endforeach	
						</div>

						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.3090055395896!2d100.35497781432359!3d-0.9155010355912495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4b8ce92f7f2b7%3A0x4bdb53a41adafb75!2sDinas%20Kominfo%20Prov.%20Sumbar!5e0!3m2!1sen!2sid!4v1627106589479!5m2!1sen!2sid" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe> <br><br><br><br>

						<!-- Tag -->
						<div class="p-b-55">
							<div class="how2 how2-cl4 flex-s-c m-b-30">
								<h3 class="f1-m-2 cl3 tab01-title">
									Tags
								</h3>
							</div>

							<div class="flex-wr-s-s m-rl--5">
								@foreach($kategori as $ktg)
								<a href="{{route('b.tag', ['tag'=>$ktg->kategori])}}" class="flex-c-c size-h-2 bo-1-rad-20 bocl12 f1-s-1 cl8 hov-btn2 trans-03 p-rl-20 p-tb-5 m-all-5">
									{{$ktg->kategori}}
								</a>
								@endforeach
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
@endsection