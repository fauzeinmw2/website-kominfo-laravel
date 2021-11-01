<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;
use App\Models\Pengumuman;
use App\Models\Pimpinan;
use App\Models\Visimisi;
use App\Models\Sejarah;
use App\Models\Galeri;

class ProfilController extends Controller
{
    public function pimpinan(){
        $data = [
            'berita' => Berita::orderBy('tanggal', 'desc')->paginate(1),
            'tb_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(3),
            'tb_berita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'kategori' => Berita::select('kategori')->distinct()->get(),
            'tb_pimpinan' => Pimpinan::all(),
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4)  
        ];

        return view('frontend.content.profil.pimpinan', $data);
    }

    public function strukturOrganisasi(){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),
            'tb_berita' => Berita::orderBy('tanggal', 'desc')->paginate(3)
        ];
        return view('frontend.content.profil.strukturOrganisasi', $data);
    }

    public function visiMisi(){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),
            'tb_berita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'tb_pimpinan' => Pimpinan::all(),
            'tb_visimisi' => Visimisi::all()
        ];
        return view('frontend.content.profil.visimisi', $data);
    }

    public function sejarah(){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),
            'tb_berita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'tb_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(3),
            'kategori' => Berita::select('kategori')->distinct()->get(),
            'sejarah' => Sejarah::all()
        ];
        return view('frontend.content.profil.sejarah', $data);
    }

    public function galeri(){
        $data = [
            'ly_berita' => Berita::orderBy('tanggal', 'desc')->paginate(4),
            'ly_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(4),

            'tb_berita' => Berita::orderBy('tanggal', 'desc')->paginate(3),
            'tb_pengumuman' => Pengumuman::orderBy('tanggal', 'desc')->paginate(3),
            'kategori' => Berita::select('kategori')->distinct()->get(),
            'galeri' => Galeri::orderBy('tanggal', 'desc')->simplePaginate(20)
        ];
        return view('frontend.content.profil.galeri', $data);
    }
}
