<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Berita;
use App\Models\Pengumuman;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jadmin = Admin::count();
        $jberita = Berita::count();
        $jpengumuman = Pengumuman::count();
        return view('backend.dashboard.index', ['jadmin' => $jadmin, 'jberita' => $jberita, 'jpengumuman' => $jpengumuman]);
    }
}
