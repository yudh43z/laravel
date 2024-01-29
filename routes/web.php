<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Auth::routes(['register' => false]);
Route::get('/', [\App\Http\Controllers\HomeController::class, 'index'])->name('homepage');

// admin
Route::group(['middleware' => ['is_admin', 'auth'], 'prefix' => 'admin', 'as' => 'admin.'], function () {
    Route::get('dashboard', [App\Http\Controllers\Admin\DashboardController::class, 'index'])->name('dashboard');
    Route::resource('contact', \App\Http\Controllers\Admin\ContactController::class)->except('show');
    Route::resource('pelanggar', \App\Http\Controllers\Admin\PelanggarController::class)->except('show');

    Route::resource('kelas', \App\Http\Controllers\Admin\KelasController::class)->except('show');
    Route::resource('semester', \App\Http\Controllers\Admin\SemesterController::class)->except('show');
    Route::resource('tahun-ajaran', \App\Http\Controllers\Admin\TahunAjaranController::class)->except('show');
    Route::resource('mata-pelajaran', \App\Http\Controllers\Admin\MataPelajaranController::class)->except('show');
    Route::resource('siswa', \App\Http\Controllers\Admin\SiswaController::class)->except('show');
    Route::resource('guru', \App\Http\Controllers\Admin\GuruController::class)->except('show');
    Route::resource('kbm', \App\Http\Controllers\Admin\KbmController::class)->except('show');
    Route::resource('login', \App\Http\Controllers\Admin\LoginController::class)->except('show');
    Route::get('kegiatan-belajar', [App\Http\Controllers\Admin\KegiatanBelajarController::class, 'index'])->name('kegiatan-belajar');
    Route::get('materi/{id}', [App\Http\Controllers\Admin\KegiatanBelajarController::class, 'view'])->name('materi');
    Route::get('nilai/{id}', [App\Http\Controllers\Admin\KegiatanBelajarController::class, 'nilai'])->name('nilai');
    Route::post('nilai/{id}', [App\Http\Controllers\Admin\KegiatanBelajarController::class, 'nilai_save'])->name('nilai-save');

    Route::get('users', [\App\Http\Controllers\UserController::class, 'index'])->name('users.index');
    Route::get('profile', [\App\Http\Controllers\ProfileController::class, 'show'])->name('profile.show');
    Route::put('profile', [\App\Http\Controllers\ProfileController::class, 'update'])->name('profile.update');
});
