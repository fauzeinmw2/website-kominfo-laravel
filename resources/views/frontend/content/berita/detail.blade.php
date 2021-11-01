@extends('frontend.layouts.index')

@section('title') 
    {{$berita->judul}}
@endsection

@section('content')
<!-- Breadcrumb -->
<div class="container">
	<div class="headline bg0 flex-wr-sb-c p-rl-20 p-tb-8">
		<div class="f2-s-1 p-r-30 m-tb-6">
			<a href="{{route('home')}}" class="breadcrumb-item f1-s-3 cl9">
				Home 
			</a>

			<a href="{{route('b.index')}}" class="breadcrumb-item f1-s-3 cl9">
				Berita 
			</a>

			<span class="breadcrumb-item f1-s-3 cl9">
				{{$berita->judul}}
			</span>
		</div>

		<div class="pos-relative size-a-2 bo-1-rad-22 of-hidden bocl11 m-tb-6">
			<input class="f1-s-1 cl6 plh9 s-full p-l-25 p-r-45" type="text" name="search" placeholder="Search">
			<button class="flex-c-c size-a-1 ab-t-r fs-20 cl2 hov-cl10 trans-03">
				<i class="zmdi zmdi-search"></i>
			</button>
		</div>
	</div>
</div>

	
<!-- Content -->
<section class="bg0 p-b-140 p-t-10">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10 col-lg-8 p-b-30">
				<div class="p-r-10 p-r-0-sr991">
					<!-- Blog Detail -->
					<div class="p-b-70">
						<a href="{{route('b.tag', ['tag'=>$berita->kategori])}}" class="f1-s-10 cl2 hov-cl10 trans-03 text-uppercase">
							{{$berita->kategori}}
						</a>

						<h3 class="f1-l-3 cl2 p-b-16 p-t-33 respon2">
                            {{$berita->judul}}
						</h3>
							
						<div class="flex-wr-s-s p-b-40">
							<span class="f1-s-3 cl8 m-r-15">
								<span>
                                    {{$berita->tanggal}}
								</span>
							</span>
						</div>

						<div class="wrap-pic-max-w p-b-30">
							<img src="{{asset('image')}}/Berita/{{$berita->gambar}}" alt="IMG">
						</div>

						{!!$berita->isi!!}

						<!-- Tag -->
						<div class="flex-s-s p-t-12 p-b-15">
							<span class="f1-s-12 cl5 m-r-8">
								Tags:
							</span>
								
							<div class="flex-wr-s-s size-w-0">
								<a href="{{route('b.tag', ['tag'=>$berita->kategori])}}" class="f1-s-12 cl8 hov-link1 m-r-15" style="color:#1474ae;">
                                    {{$berita->kategori}}
								</a>
							</div>
						</div>

						<!-- Share -->
						<div class="flex-s-s">
							<span class="f1-s-12 cl5 p-t-1 m-r-15">
								Share:
							</span>
								
							<div class="flex-wr-s-s size-w-0">
								<a href="#" class="dis-block f1-s-13 cl0 bg-facebook borad-3 p-tb-4 p-rl-18 hov-btn1 m-r-3 m-b-3 trans-03">
									<i class="fab fa-facebook-f m-r-7"></i>
									Facebook
								</a>

								<a href="#" class="dis-block f1-s-13 cl0 bg-twitter borad-3 p-tb-4 p-rl-18 hov-btn1 m-r-3 m-b-3 trans-03">
									<i class="fab fa-twitter m-r-7"></i>
									Twitter
								</a>

								<a href="#" class="dis-block f1-s-13 cl0 bg-facebook borad-3 p-tb-4 p-rl-18 hov-btn1 m-r-3 m-b-3 trans-03">
									<i class="fab fa-instagram m-r-7"></i>
									instagram
								</a>

								<a href="#" class="dis-block f1-s-13 cl0 bg-twitter borad-3 p-tb-4 p-rl-18 hov-btn1 m-r-3 m-b-3 trans-03">
									<i class="fab fa-whatsapp m-r-7"></i>
									whatsapp
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
				
			<!-- Sidebar -->
			<div class="col-md-10 col-lg-4 p-b-30">
				<div class="p-l-10 p-rl-0-sr991 p-t-70">						

					<!-- Berita Terbaru -->
					<div class="p-b-30">
						<div class="how2 how2-cl4 flex-s-c">
							<h3 class="f1-m-2 cl3 tab01-title">
								Pengumuman Terbaru
							</h3>
						</div>

                        @foreach($pengumuman->chunk(3) as $pengumumanChunk)   
						<ul class="p-t-35">
                            @foreach($pengumumanChunk as $peng)
							<li class="flex-wr-sb-s p-b-30">
								<a href="{{route('b.show', ['slug'=>$peng->slug])}}" class="size-w-10 wrap-pic-w hov1 trans-03">
									<img src="{{asset('image')}}/pengumuman/{{$peng->gambar}}" alt="IMG" height="70">
								</a>

								<div class="size-w-11">
									<h6 class="p-b-4">
										<a href="{{route('b.show', ['slug'=>$peng->slug])}}" class="f1-s-5 cl3 hov-cl10 trans-03">
											{{$peng->judul}}
										</a>
									</h6>

									<span class="cl8 txt-center p-b-24">
										<span class="f1-s-3">
                                            {{$peng->tanggal}}
										</span>
									</span>
								</div>
							</li>
                            @endforeach
						</ul>  
                        @endforeach
					</div>

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