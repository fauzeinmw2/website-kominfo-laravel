@extends('frontend.layouts.index')

@section('title', 'Pimpinan')

@section('content')
<!-- Headline -->
<div class="container">
	<div class="bg0 flex-wr-sb-c p-rl-20 p-tb-8">
		<div class="f2-s-1 p-r-30 size-w-0 m-tb-6 flex-wr-s-c">
		    <span class="text-uppercase cl2 p-r-8">
				Berita :
			</span>

            @foreach($tb_berita->chunk(3) as $beritaChunk)
			<span class="dis-inline-block cl6 slide100-txt pos-relative size-w-0" data-in="fadeInDown" data-out="fadeOutDown">
                @foreach($beritaChunk as $berita)
                <span class="dis-inline-block slide100-txt-item animated visible-false">
					{{$berita->judul}}
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
		

<!-- Content -->
<section class="bg0 p-b-140 p-t-10">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10 col-lg-8 p-b-30">
				<div class="p-r-10 p-r-0-sr991">
					<!-- Blog Detail -->
					<div class="p-b-70">
						<h3 class="f1-l-3 cl2 p-b-16 p-t-33 respon2">
							PIMPINAN KOMINFO SUMBAR
						</h3>

                        @foreach($tb_pimpinan as $pimpinan)
						<div class="wrap-pic-max-w p-b-30">
							<img src="{{asset('image')}}/pimpinan/{{$pimpinan->foto}}">
						</div>

						<div>
                        {!!$pimpinan->deskripsi!!}
                        </div>
                        @endforeach
					</div>
				</div>
			</div>
				
			<!-- Sidebar -->
			<div class="col-md-10 col-lg-4 p-b-30">
				<div class="p-l-10 p-rl-0-sr991 p-t-70">						
					<!-- Pengumuman Terbaru -->
					<div class="p-b-30">
						<div class="how2 how2-cl4 flex-s-c">
							<h3 class="f1-m-2 cl3 tab01-title">
								Pengumuman Terbaru
							</h3>
						</div>

                        @foreach($tb_pengumuman->chunk(3) as $pengumumanChunk)  
						<ul class="p-t-35">
                            @foreach($pengumumanChunk as $pengumuman)
                            <li class="flex-wr-sb-s p-b-30">
								<a href="{{route('p.show', ['slug'=>$pengumuman->slug])}}" class="size-w-10 wrap-pic-w hov1 trans-03">
									<img src="{{asset('image')}}/pengumuman/{{$pengumuman->gambar}}" alt="IMG" height="70">
								</a>

								<div class="size-w-11">
									<h6 class="p-b-4">
										<a href="{{route('p.show', ['slug'=>$pengumuman->slug])}}" class="f1-s-5 cl3 hov-cl10 trans-03">
											{{$pengumuman->judul}}
										</a>
									</h6>

									<span class="cl8 txt-center p-b-24">
										<span class="f1-s-3">
                                            {{$pengumuman->tanggal}}
										</span>
									</span>
								</div>
							</li>
                            @endforeach
						</ul>   
                        @endforeach
					</div>

					<!-- Berita Terbaru -->
					<div class="p-b-30">
						<div class="how2 how2-cl4 flex-s-c">
							<h3 class="f1-m-2 cl3 tab01-title">
								Berita Terbaru
							</h3>
						</div>

                        @foreach($tb_berita->chunk(3) as $beritaChunk)   
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