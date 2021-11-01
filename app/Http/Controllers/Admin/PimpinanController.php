<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Pimpinan;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use File;

class PimpinanController extends Controller
{
    public function index()
    {
        $pimpinan = Pimpinan::orderBy('id', 'desc')->paginate(6);
        return view('backend.pimpinan.index', compact('pimpinan'));
    }

    public function create()
    {
        return view('backend.pimpinan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'nama' => 'required|min:3',
            'deskripsi' => 'required',
        ]);

        $imgName = null;

        if($request->foto){
            $imgName = $request->foto->getClientOriginalName() . '-' . time() . '.' . $request->foto->extension();
            $request->foto->move(public_path('image/pimpinan'), $imgName);
        }

        Pimpinan::create([
            'nama' => $request->nama,
            'deskripsi' => $request->deskripsi,
            'foto' => $imgName,   
        ]);

        return redirect()->route('pimpinan');
    }

    public function edit($id)
    {
        $pimpinan = Pimpinan::find($id);
        return view('backend.pimpinan.edit', compact("pimpinan"));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'gambar' => 'mimes:jpeg,png,jpg,gif,svg',
            'nama' => 'required|min:3',
            'deskripsi' => 'required',
        ]);

        $imgName = $request->gambarold;

        if($request->foto){
            $imgName = $request->foto->getClientOriginalName() . '-' . time() . '.' . $request->foto->extension();
            $data =  Pimpinan::find($id);
            File::delete(public_path().'/image/pimpinan/' . $data->foto); // untuk menghapus file nya
            $request->foto->move(public_path('image/pimpinan'), $imgName);
        }

        Pimpinan::find($id)->update([
            'nama' => $request->nama,
            'deskripsi' => $request->deskripsi,
            'foto' => $imgName
        ]);

        return redirect()->route('pimpinan');
    }

    public function destroy($id)
    {
        $data =  Pimpinan::find($id);
        File::delete(public_path().'/image/pimpinan/' . $data->foto); // untuk menghapus file nya
        Pimpinan::find($id)->delete();
        return redirect()->route('pimpinan');
    }
}
