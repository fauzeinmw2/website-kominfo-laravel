@extends('frontend.layouts.index')

@section('title', 'Visi Misi')

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
                    @foreach($tb_visimisi as $vm)
					<div class="p-b-70">
						<h3 class="f1-l-3 cl2 p-b-16 p-t-33 respon2">
							VISI MISI KOMINFO SUMBAR
						</h3>

						<h3 class="f1-l-3 cl2 p-b-16 p-t-33 respon2">
							VISI	
						</h3>

						<div>
                            {!!$vm->visi!!}
                        </div>

						<h3 class="f1-l-3 cl2 p-b-16 p-t-33 respon2">
							MISI	
						</h3>

						<div>
                            {!!$vm->misi!!}
                        </div>
					</div>
                    @endforeach
				</div>
			</div>
				
				<!-- Sidebar -->
				<div class="col-md-10 col-lg-4 p-b-30">
					<div class="p-l-10 p-rl-0-sr991 p-t-70">						

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
					</div>
				</div>
			</div>
		</div>
    </div>
</section>
@endsection