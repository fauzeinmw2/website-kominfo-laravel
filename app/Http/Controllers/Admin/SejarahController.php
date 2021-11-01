<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Sejarah;
use Illuminate\Http\Request;

class SejarahController extends Controller
{
    public function index()
    {
        $sejarah = Sejarah::orderBy('id', 'desc')->paginate(6);
        return view('backend.sejarah.index', compact('sejarah'));
    }

    public function edit($id)
    {
        $sejarah = Sejarah::find($id);
        return view('backend.sejarah.edit', compact("sejarah"));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'isi' => 'required'
        ]);

        Sejarah::find($id)->update([
            'isi' => $request->isi
        ]);

        return redirect()->route('sejarah');
    }
}
