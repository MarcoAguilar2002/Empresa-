<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Persona;

class PersonasController extends Controller
{
    //
    public function index(){
        $personas = Persona::get();
        return view('personas',compact('personas'));
    }
}
