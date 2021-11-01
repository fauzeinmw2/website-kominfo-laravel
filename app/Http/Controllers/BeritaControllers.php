<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Pengumuman;

class BeritaControllers extends Controller
{
    public function index(){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),

            'berita' => Berita::orderBy('tanggal', 'desc')->simplePaginate(10),
            'pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(3),
            'kategori' => Berita::select('kategori')->distinct()->get()
        ];

        return view('frontend.content.berita.index', $data);
    }

    public function show($slug){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),

            'berita' => Berita::where('slug', $slug)->first(),
            'pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(3),
            'kategori' => Berita::select('kategori')->distinct()->get()
        ];
        
        $berita = Berita::where('slug', $slug)->first();

        if($berita == null){
            abort(404);
        }

        return view('frontend.content.berita.detail', $data);
    }

    public function kategori($tag){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),

            'berita' => Berita::where('kategori', $tag)->paginate(10),
            'dberita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'kategori' => Berita::select('kategori')->distinct()->get()
        ];

        return view('frontend.content.berita.tag', $data);
    }
}
