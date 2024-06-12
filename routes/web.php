<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PersonasController; 

Route::get('/', function () {
    return view('inicio');
})->name('inicio');

Route::get('personas',[PersonasController::class, 'index'])->name('personas');

Route::get('contacto', function () {
    return view('contacto');
})->name('contacto');
