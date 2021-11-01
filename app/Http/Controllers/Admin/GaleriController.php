<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Galeri;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use File;

class GaleriController extends Controller
{
    public function index()
    {
        $galeri = Galeri::orderBy('id', 'desc')->paginate(6);
        return view('backend.galeri.index', compact('galeri'));
    }

    public function create()
    {
        return view('backend.galeri.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'judul' => 'required|min:3',
            'tanggal' => 'required',
        ]);

        $imgName = null;

        if($request->foto){
            $imgName = $request->foto->getClientOriginalName() . '-' . time() . '.' . $request->foto->extension();
            $request->foto->move(public_path('image/galeri'), $imgName);
        }

        Galeri::create([
            'judul' => $request->judul,
            'foto' => $imgName,
            'tanggal' => $request->tanggal    
        ]);

        return redirect()->route('galeri');
    }

    public function edit($id)
    {
        $galeri = Galeri::find($id);
        return view('backend.galeri.edit', compact("galeri"));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'judul' => 'required|min:3',
            'tanggal' => 'required',
        ]);

        $imgName = $request->gambarold;

        if($request->foto){
            $imgName = $request->foto->getClientOriginalName() . '-' . time() . '.' . $request->foto->extension();
            $data =  Galeri::find($id);
            File::delete(public_path().'/image/galeri/' . $data->foto); // untuk menghapus file nya
            $request->foto->move(public_path('image/galeri'), $imgName);
        }

        Galeri::find($id)->update([
            'judul' => $request->judul,
            'foto' => $imgName,
            'tanggal' => $request->tanggal
        ]);

        return redirect()->route('galeri');
    }

    public function destroy($id)
    {
        $data =  Galeri::find($id);
        File::delete(public_path().'/image/galeri/' . $data->foto); // untuk menghapus file nya
        Galeri::find($id)->delete();
        return redirect()->route('galeri');
    }
}
