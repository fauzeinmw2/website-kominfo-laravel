<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Berita;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use File;

class BeritaController extends Controller
{
    public function index()
    {
        $berita = Berita::orderBy('id', 'desc')->get();
        return view('backend.berita.index', compact('berita'));
    }

    public function create()
    {
        return view('backend.berita.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'judul' => 'required|min:3',
            'isi' => 'required|min:5',
            'kategori' => 'required|min:2',
            'tanggal' => 'required',
        ]);

        $imgName = null;

        if($request->gambar){
            $imgName = $request->gambar->getClientOriginalName() . '-' . time() . '.' . $request->gambar->extension();
            $request->gambar->move(public_path('image/berita'), $imgName);
        }

        Berita::create([
            'judul' => $request->judul,
            'isi' => $request->isi,
            'gambar' => $imgName,
            'kategori' => $request->kategori,
            'tanggal' => $request->tanggal,
            'slug' => Str::slug($request->judul, '-'),
        ]);

        return redirect()->route('berita');
    }

    public function edit($id)
    {
        $berita = Berita::find($id);
        return view('backend.berita.edit', compact("berita"));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'judul' => 'required|min:3',
            'isi' => 'required|min:5',
            'kategori' => 'required|min:2',
            'tanggal' => 'required'
        ]);

        $imgName = $request->gambarold;

        if($request->gambar){
            $imgName = $request->gambar->getClientOriginalName() . '-' . time() . '.' . $request->gambar->extension();
            $data =  Berita::find($id);
            File::delete(public_path().'/image/berita/' . $data->gambar); // untuk menghapus file nya
            $request->gambar->move(public_path('image/berita'), $imgName);
        }

        Berita::find($id)->update([
            'judul' => $request->judul,
            'isi' => $request->isi,
            'gambar' => $imgName,
            'kategori' => $request->kategori,
            'tanggal' => $request->tanggal,
            'slug' => Str::slug($request->judul, '-')
        ]);

        return redirect()->route('berita');
    }

    public function destroy($id)
    {
        $data =  Berita::find($id);
        File::delete(public_path().'/image/berita/' . $data->gambar); // untuk menghapus file nya
        Berita::find($id)->delete();
        return redirect()->route('berita');
    } 
}
