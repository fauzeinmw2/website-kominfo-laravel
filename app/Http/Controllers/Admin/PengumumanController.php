<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Pengumuman;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use File;

class PengumumanController extends Controller
{
    public function index()
    {
        $pengumuman = Pengumuman::orderBy('id', 'desc')->paginate(6);
        return view('backend.pengumuman.index', compact('pengumuman'));
    }

    public function create()
    {
        return view('backend.pengumuman.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'judul' => 'required|min:3',
            'isi' => 'required|min:5',
            'tanggal' => 'required',
        ]);

        $imgName = null;

        if($request->gambar){
            $imgName = $request->gambar->getClientOriginalName() . '-' . time() . '.' . $request->gambar->extension();
            $request->gambar->move(public_path('image/pengumuman'), $imgName);
        }

        Pengumuman::create([
            'judul' => $request->judul,
            'slug' => Str::slug($request->judul, '-'),
            'isi' => $request->isi,
            'gambar' => $imgName,
            'tanggal' => $request->tanggal    
        ]);

        return redirect()->route('pengumuman');
    }

    public function edit($id)
    {
        $pengumuman = Pengumuman::find($id);
        return view('backend.pengumuman.edit', compact("pengumuman"));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'judul' => 'required|min:3',
            'isi' => 'required|min:5',
            'tanggal' => 'required'
        ]);

        $imgName = $request->gambarold;

        if($request->gambar){
            $imgName = $request->gambar->getClientOriginalName() . '-' . time() . '.' . $request->gambar->extension();
            $data =  Pengumuman::find($id);
            File::delete(public_path().'/image/pengumuman/' . $data->gambar); // untuk menghapus file nya
            $request->gambar->move(public_path('image/pengumuman'), $imgName);
        }

        Pengumuman::find($id)->update([
            'judul' => $request->judul,
            'slug' => Str::slug($request->judul, '-'),
            'isi' => $request->isi,
            'gambar' => $imgName,
            'tanggal' => $request->tanggal
        ]);

        return redirect()->route('pengumuman');
    }

    public function destroy($id)
    {
        $data =  Pengumuman::find($id);
        File::delete(public_path().'/image/pengumuman/' . $data->gambar); // untuk menghapus file nya
        Pengumuman::find($id)->delete();
        return redirect()->route('pengumuman');
    }
}
