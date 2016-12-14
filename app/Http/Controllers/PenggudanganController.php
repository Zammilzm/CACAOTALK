<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Penggudangan;
use App\Models\Panen;

class PenggudanganController extends Controller
{

	public function create()//menampilkan form create
	{
		$panens = Panen::all();
		return view('penggudangan.create-penggudangan',compact("panens"));
	}
	
	public function index()//menampilkan tabel penggudangan
	{
		$penggudangans= Penggudangan::all();
		$jenis = Penggudangan::jenis()->get(); //tabel informasi
		return view('penggudangan.tabel-penggudangan',compact("penggudangans","jenis"));
	}
	public function show($id)// ajax produksi
	{
		$penggudangan = Penggudangan::with('panen.tanam.buah')->find($id);
		return $penggudangan;
	}
    public function store(Request $request)//buat cretae klik simpan
    {
    	Penggudangan::create($request->all());
    	$panen = Panen::find($request->id_panen);

    	//ketika jumlah produksi lebih besar dr produktivitasnya
    	if ($request->panen_disimpan>=$panen->produktivitas) {
    		$request->session()->flash('status', 'INPUTAN jumlah produksi SALAH');
    		return redirect('/penggudangan/create');
    	}else{
    		if ($request->panen_disimpan != '') {
    			$panen->produktivitas -= $request->panen_disimpan;
    		}
    	}


    	$panen->update();
    	return redirect('/penggudangan');
    }
}
