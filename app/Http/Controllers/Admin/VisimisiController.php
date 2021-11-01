<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Visimisi;
use Illuminate\Http\Request;

class VisimisiController extends Controller
{
    public function index()
    {
        $visimisi = Visimisi::orderBy('id', 'desc')->paginate(6);
        return view('backend.visimisi.index', compact('visimisi'));
    }

    public function create()
    {
        return view('backend.visimisi.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'visi' => 'required',
            'misi' => 'required',
        ]);

        Visimisi::create([
            'visi' => $request->visi,
            'misi' => $request->misi  
        ]);

        return redirect()->route('visimisi');
    }

    public function edit($id)
    {
        $visimisi = Visimisi::find($id);
        return view('backend.visimisi.edit', compact("visimisi"));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'visi' => 'required',
            'misi' => 'required',
        ]);

        Visimisi::find($id)->update([
            'visi' => $request->visi,
            'misi' => $request->misi
        ]);

        return redirect()->route('visimisi');
    }

    public function destroy($id)
    {
        Visimisi::find($id)->delete();
        return redirect()->route('visimisi');
    }
}
