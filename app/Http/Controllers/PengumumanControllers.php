<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Pengumuman;

class PengumumanControllers extends Controller
{
    public function index(){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),

            'berita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->simplepaginate(10),
            'kategori' => Berita::select('kategori')->distinct()->get()
        ];

        return view('frontend.content.pengumuman.index', $data);
    }

    public function show($slug){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),

            'pengumuman' => Pengumuman::where('slug', $slug)->first(),
            'berita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'kategori' => Berita::select('kategori')->distinct()->get()
        ];
        

        if($data['pengumuman'] == null){
            abort(404);
        }

        return view('frontend.content.pengumuman.detail', $data);
    }
}
