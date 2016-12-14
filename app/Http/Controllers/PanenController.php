<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Panen;
use App\Models\Kakao;
use App\Models\Tanam;

class PanenController extends Controller
{
    
	
	public function show()//menampilkan tabel
    {
    	$panen = Panen::all();
    	return view('panen.tabel-panen',compact('panen'));
    }

    public function detail($id){ //melihat detail
    	$panen = Panen::with('tanam.buah')->find($id);
    	return $panen;
    }
}
