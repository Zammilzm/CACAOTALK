<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Kakao;
use App\Models\Panen;

class KakaoController extends Controller
{
    
	public function create()
	{
		return view('buahKakao.create-kakao');
	}

	public function tabel()
	{
		return view('buahKakao.tabel-kakao');
	}

	public function store(Request $request)//ketika klik simpan
	{
		Kakao::create($request->all());
		return redirect('tabel');
	}
	public function index()//menampilkan di tabel
    {
    	$buah = Kakao::all();
    	return view('buahKakao.tabel-kakao',compact('buah'));
    }
    public function destroy($id)//klik delete
    {
    	$buah = Kakao::find($id);
    	$buah->delete();
    	return redirect("tabel");
    }
    public function edit($id)// ketika klik edit
    {
    	$buah = Kakao::find($id);
    	return view('buahKakao.edit-kakao',compact('buah'));
    }

    public function update(Request $request,$id)//ketika klik simpan edit/update
    {
    	$buah = Kakao::find($id);
    	$buah->update($request->all());
    	return redirect('tabel');
    }

    
    public function show($id)// ajax nya produksi
    {
        $buah = Kakao::with('penanaman')->find($id);
        return $buah;
    }

    
}
