@extends('frontend.layouts.index')

@section('title', 'Berita')

@section('content')
<!-- Breadcrumb -->
<div class="container">
	<div class="bg0 flex-wr-sb-c p-rl-20 p-tb-8">
		<div class="f2-s-1 p-r-30 m-tb-6">
			<a href="#" class="breadcrumb-item f1-s-3 cl9">
				Home 
			</a>

			<span class="breadcrumb-item f1-s-3 cl9">
				Berita
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


<!-- Page heading -->
<div class="container p-t-4 p-b-40">
	<h2 class="f1-l-1 cl2">
		Berita
	</h2>
</div>

<!-- Post -->
<section class="bg0 p-b-55">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10 col-lg-8 p-b-80">
				<div class="p-r-10 p-r-0-sr991">

                    @foreach($berita->chunk(1) as $beritaChunk)
					<div class="m-t--40 p-b-40">
						<!-- Item post -->
                        @foreach($beritaChunk as $brt)
						<div class="flex-wr-sb-s p-t-40 p-b-15 how-bor2">
							<a href="{{route('b.show', ['slug'=>$brt->slug])}}" class="size-w-8 wrap-pic-w hov1 trans-03 w-full-sr575 m-b-25">
								<img src="{{asset('image')}}/Berita/{{$brt->gambar}}" alt="IMG" height="200">
							</a>

							<div class="size-w-9 w-full-sr575 m-b-25">
								<h5 class="p-b-12">
									<a href="{{route('b.show', ['slug'=>$brt->slug])}}" class="f1-l-1 cl2 hov-cl10 trans-03 respon2">
										{{$brt->judul}} 
									</a>
								</h5>

								<div class="cl8 p-b-18">
									<span class="f1-s-3">
                                        {{$brt->tanggal}}
									</span>
								</div>

								{!!substr($brt->isi,0,200)!!}

								<br>

								<a href="{{route('b.show', ['slug'=>$brt->slug])}}" class="f1-s-1 cl9 hov-cl10 trans-03">
									Read More
									<i class="m-l-2 fa fa-long-arrow-alt-right"></i>
								</a>
							</div>
						</div>
                        @endforeach
					</div>
                    @endforeach
				</div>

                <div>
                    {{$berita->links()}}
                </div>

			</div>

			<div class="col-md-10 col-lg-4 p-b-80">
				<div class="p-l-10 p-rl-0-sr991">							
					
                    <!-- Pengumuman Terbaru -->
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
								<a href="{{route('p.show', ['slug'=>$peng->slug])}}" class="size-w-10 wrap-pic-w hov1 trans-03">
									<img src="{{asset('image')}}/Pengumuman/{{$peng->gambar}}" alt="IMG" height="70">
								</a>

								<div class="size-w-11">
									<h6 class="p-b-4">
										<a href="{{route('p.show', ['slug'=>$peng->slug])}}" class="f1-s-5 cl3 hov-cl10 trans-03">
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
					        <a href="{{route('b.tag', ['tag'=> $ktg->kategori])}}" class="flex-c-c size-h-2 bo-1-rad-20 bocl12 f1-s-1 cl8 hov-btn2 trans-03 p-rl-20 p-tb-5 m-all-5">
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