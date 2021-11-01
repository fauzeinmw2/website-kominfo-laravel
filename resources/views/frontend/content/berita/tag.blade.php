@extends('frontend.layouts.index')

@section('title', 'Kategori')

@section('content')
<!-- Breadcrumb -->
<div class="container">
	<div class="bg0 flex-wr-sb-c p-rl-20 p-tb-8">
		<div class="f2-s-1 p-r-30 m-tb-6">
			<a href="{{route('home')}}" class="breadcrumb-item f1-s-3 cl9">
				Home 
			</a>

			<span class="breadcrumb-item f1-s-3 cl9">
				Tag
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


<!-- Post -->
<section class="bg0 p-b-55">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10 col-lg-8 p-b-80">
				<div class="row">

                    @foreach($berita->chunk(2) as $beritaChunk)
					<div class="col-sm-6 p-r-25 p-r-15-sr991">
						<!-- Item latest -->
                        @foreach($beritaChunk as $brt)	
						<div class="m-b-45">
							<a href="{{route('b.show', ['slug'=>$brt->slug])}}" class="wrap-pic-w hov1 trans-03">
								<img src="{{asset('image')}}/Berita/{{$brt->gambar}}" alt="IMG" height="200">
							</a>

							<div class="p-t-16">
								<h5 class="p-b-5">
									<a href="{{route('b.show', ['slug'=>$brt->slug])}}" class="f1-m-3 cl2 hov-cl10 trans-03">
										{{$brt->judul}} 
									</a>
								</h5>

								<span class="cl8">
									<span class="f1-s-3">
                                        {{$brt->tanggal}}
									</span>
								</span>
							</div>
						</div>
                        @endforeach
					</div>
                    @endforeach
				</div>
			</div>

			<div class="col-md-10 col-lg-4 p-b-80">
				<div class="p-l-10 p-rl-0-sr991">

					<!-- Berita Terbaru -->
					<div class="p-b-30">
						<div class="how2 how2-cl4 flex-s-c">
							<h3 class="f1-m-2 cl3 tab01-title">
								Berita Terbaru
							</h3>
						</div>

                        @foreach($dberita->chunk(3) as $beritaChunk)   
						<ul class="p-t-35">
                            @foreach($beritaChunk as $berita)
							<li class="flex-wr-sb-s p-b-30">
								<a href="{{route('b.show', ['slug'=>$berita->slug])}}" class="size-w-10 wrap-pic-w hov1 trans-03">
									<img src="{{asset('image')}}/berita/{{$berita->gambar}}" alt="IMG" height="70">
								</a>

								<div class="size-w-11">
									<h6 class="p-b-4">
										<a href="{{route('b.show', ['slug'=>$berita->slug])}}" class="f1-s-5 cl3 hov-cl10 trans-03">
											{{$berita->judul}}
										</a>
									</h6>

									<span class="cl8 txt-center p-b-24">
										<span class="f1-s-3">
                                            {{$berita->tanggal}}
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