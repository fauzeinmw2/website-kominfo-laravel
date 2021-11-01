<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\BeritaController;
use App\Http\Controllers\Admin\PengumumanController;
use App\Http\Controllers\Admin\GaleriController;
use App\Http\Controllers\Admin\PimpinanController;
use App\Http\Controllers\Admin\VisimisiController;
use App\Http\Controllers\Admin\SejarahController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\HomepageController;
use App\Http\Controllers\ProfilController;

use App\Http\Controllers\BeritaControllers;
use App\Http\Controllers\PengumumanControllers;

use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', [HomepageController::class, 'index'])->name('home');

Route::get('/', [AuthController::class, 'showFormLogin'])->name('h.login');
Route::POST('login', [AuthController::class, 'login'])->name('proses_login');

Route::get('pimpinan', [ProfilController::class, 'pimpinan'])->name('h.pimpinan');
Route::get('struktur-organisasi', [ProfilController::class, 'strukturOrganisasi'])->name('h.struktur');
Route::get('visi-misi', [ProfilController::class, 'visiMisi'])->name('h.visimisi');
Route::get('sejarah', [ProfilController::class, 'sejarah'])->name('h.sejarah');

Route::get('berita', [BeritaControllers::class, 'index'])->name('b.index');
Route::get('berita/{slug}', [BeritaControllers::class, 'show'])->name('b.show');
Route::get('kategori/{tag}', [BeritaControllers::class, 'kategori'])->name('b.tag');

Route::get('pengumuman', [PengumumanControllers::class, 'index'])->name('p.index');
Route::get('pengumuman/{slug}', [PengumumanControllers::class, 'show'])->name('p.show');

Route::get('galeri', [ProfilController::class, 'galeri'])->name('h.galeri');




// Route::resource('admin', 'AdminController');

// Dashboard
Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');

Route::prefix('admin')
    ->namespace('Admin')
    ->group(function(){
        
        // Admin
        Route::get('data-admin', [AdminController::class, 'index'])->name('admin');
        Route::get('admin-create', [AdminController::class, 'create'])->name('admin.create');
        Route::post('admin-create', [AdminController::class, 'store'])->name('admin.store');
        Route::get('admin-edit/{id}', [AdminController::class, 'edit'])->name('admin.edit');
        Route::post('admin-edit/{id}', [AdminController::class, 'update'])->name('admin.update');
        Route::get('admin-delete/{id}', [AdminController::class, 'destroy'])->name('admin.delete');
    
        //route berita
        Route::get('data-berita', [BeritaController::class, 'index'])->name('berita');
        Route::get('berita-create', [BeritaController::class, 'create'])->name('berita.create');
        Route::post('berita-create', [BeritaController::class, 'store'])->name('berita.store');
        Route::get('berita-edit/{id}', [BeritaController::class, 'edit'])->name('berita.edit');
        Route::post('berita-edit/{id}', [BeritaController::class, 'update'])->name('berita.update');
        Route::get('berita-delete/{id}', [BeritaController::class, 'destroy'])->name('berita.delete');
    
        
        //route pengumuman
        Route::get('data-pengumuman', [PengumumanController::class, 'index'])->name('pengumuman');
        Route::get('pengumuman-create', [PengumumanController::class, 'create'])->name('pengumuman.create');
        Route::post('pengumuman-create', [PengumumanController::class, 'store'])->name('pengumuman.store');
        Route::get('pengumuman-edit/{id}', [PengumumanController::class, 'edit'])->name('pengumuman.edit');
        Route::post('pengumuman-edit/{id}', [PengumumanController::class, 'update'])->name('pengumuman.update');
        Route::get('pengumuman-delete/{id}', [PengumumanController::class, 'destroy'])->name('pengumuman.delete');

        //route galeri
        Route::get('data-galeri', [GaleriController::class, 'index'])->name('galeri');
        Route::get('galeri-create', [GaleriController::class, 'create'])->name('galeri.create');
        Route::post('galeri-create', [GaleriController::class, 'store'])->name('galeri.store');
        Route::get('galeri-edit/{id}', [GaleriController::class, 'edit'])->name('galeri.edit');
        Route::post('galeri-edit/{id}', [GaleriController::class, 'update'])->name('galeri.update');
        Route::get('galeri-delete/{id}', [GaleriController::class, 'destroy'])->name('galeri.delete');

        //route pimpinan
        Route::get('data-pimpinan', [PimpinanController::class, 'index'])->name('pimpinan');
        Route::get('pimpinan-create', [PimpinanController::class, 'create'])->name('pimpinan.create');
        Route::post('pimpinan-create', [PimpinanController::class, 'store'])->name('pimpinan.store');
        Route::get('pimpinan-edit/{id}', [PimpinanController::class, 'edit'])->name('pimpinan.edit');
        Route::post('pimpinan-edit/{id}', [PimpinanController::class, 'update'])->name('pimpinan.update');
        Route::get('pimpinan-delete/{id}', [PimpinanController::class, 'destroy'])->name('pimpinan.delete');

        //route visimisi
        Route::get('data-visimisi', [VisimisiController::class, 'index'])->name('visimisi');
        Route::get('visimisi-create', [VisimisiController::class, 'create'])->name('visimisi.create');
        Route::post('visimisi-create', [VisimisiController::class, 'store'])->name('visimisi.store');
        Route::get('visimisi-edit/{id}', [VisimisiController::class, 'edit'])->name('visimisi.edit');
        Route::post('visimisi-edit/{id}', [VisimisiController::class, 'update'])->name('visimisi.update');
        Route::get('visimisi-delete/{id}', [VisimisiController::class, 'destroy'])->name('visimisi.delete');

        //route sejarah
        Route::get('data-sejarah', [SejarahController::class, 'index'])->name('sejarah');
        Route::get('sejarah-edit/{id}', [SejarahController::class, 'edit'])->name('sejarah.edit');
        Route::post('sejarah-edit/{id}', [SejarahController::class, 'update'])->name('sejarah.update');
    });



