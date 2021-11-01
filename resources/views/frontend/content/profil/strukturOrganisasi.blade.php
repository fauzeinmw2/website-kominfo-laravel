@extends('frontend.layouts.index')

@section('title', 'Struktur Organisasi')

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
            <h3 class="f1-l-3 cl2 p-b-16 p-t-33 respon2">
                STRUKTUR ORGANISASI KOMINFO SUMBAR
            </h3>

            <div class="wrap-pic-max-w p-b-30">
                <img src="{{asset('image')}}/struktur-kominfo.jpg" width="1300">
            </div>
        </div>			
	</div>
</section>
@endsection