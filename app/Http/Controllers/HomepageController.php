<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Pengumuman;
use App\Models\Pimpinan;
use App\Models\Visimisi;

class HomepageController extends Controller
{
    public function index(){
        $data = [  
            'berita' => Berita::orderBy('tanggal', 'desc')->paginate(1),
            'pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(1),
            'tb_berita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'tb_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(3),
            'tb_pimpinan' => Pimpinan::all(),
            'kategori' => Berita::select('kategori')->distinct()->get(),
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),
        ];

        return view('frontend.content.home.index', $data);
    }

    
}
