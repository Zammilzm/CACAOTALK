<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Tanam;
use App\Models\Kakao;
use App\Models\Panen;
use Carbon\Carbon;


class TanamController extends Controller
{

    public function create()
    {
        $buah=Kakao::all();
        return view('penanaman.create-penanaman',compact('buah'));
    }

    public function store(Request $request)//buat cretae
    {
        $tanam = Tanam::create($request->all());
        $buah = Kakao::find($request->id_buah);
        $tgl = Carbon::createFromFormat('Y-m-d', $request->tanggal_tanam);
        $jarakTanam = $request->luas_lahan/$request->jumlah_bibit;
        if ($buah->jenis_kakao == 'Mulia') {
            if ($request->musim_tanam == 'Kemarau') {
                //return 'a '.$tgl->a,mddMonths(6);
                if($jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(20),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)+($tanam->jumlah_bibit * 5 * 0.4)
                    ];
                }else if($jarakTanam<=9){ 
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)+($tanam->jumlah_bibit * 5 *0.4)-($tanam->jumlah_bibit * 5 * 0.05)
                    ];
                }
                
            }else{
                // return 'b '.$tgl->addMonths(9);
                if($jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(19),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)
                    ];
                }else if($jarakTanam<=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)-($tanam->jumlah_bibit * 5 *0.05)
                    ];
                }
            }
        }else{
            if ($request->musim_tanam == 'Kemarau') {
                //return 'c '.$tgl->addMonths(8);
                if($request->$jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(20),
                    'produktivitas' => ($tanam->jumlah_bibit * 7)+($tanam->jumlah_bibit * 7 * 0.4)
                    ];
                }else if($jarakTanam<=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)+($tanam->jumlah_bibit * 7 *0.4)-($tanam->jumlah_bibit * 7 * 0.05)
                    ];
                }
            }else{
                //return 'd '.$tgl->addMonths(11);
                if($jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(19),
                    'produktivitas' => ($tanam->jumlah_bibit * 7)
                    ];
                }else if($jarakTanam<=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 7)-($tanam->jumlah_bibit * 7 *0.05)
                    ];
                }
            }
        }
        Panen::create($panen);
        //return $panen;
        return redirect('tanam');
    }
    public function show()//
    {
        $tanam = Tanam::all();
        return view('penanaman.tabel-penanaman',compact('tanam'));
    }
    public function destroy($id)
    {
        $tanam= Tanam::find($id);
        $tanam->delete();
        return redirect("tabel");
    }
    public function edit($id)
    {
        $tanam = Tanam::find($id);
        return view('penanaman.edit-penanaman',compact('tanam'));
    }

    public function update(Request $request,$id)
    {
        $tanam = Tanam::find($id);
        $tanam->update($request->all());
        $buah = Kakao::find($request->id_buah);
        $tgl = Carbon::createFromFormat('Y-m-d', $request->tanggal_tanam);
        if ($buah->jenis_kakao == 'Mulia') {
            if ($request->musim_tanam == 'Kemarau') {
                //return 'a '.$tgl->a,mddMonths(6);
                if($jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(20),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)+($tanam->jumlah_bibit * 5 * 0.4)
                    ];
                }else if($jarakTanam<=9){ 
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)+($tanam->jumlah_bibit * 5 *0.4)-($tanam->jumlah_bibit * 5 * 0.05)
                    ];
                }
                
            }else{
                // return 'b '.$tgl->addMonths(9);
                if($jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(19),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)
                    ];
                }else if($jarakTanam<=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)-($tanam->jumlah_bibit * 5 *0.05)
                    ];
                }
            }
        }else{
            if ($request->musim_tanam == 'Kemarau') {
                //return 'c '.$tgl->addMonths(8);
                if($request->$jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(20),
                    'produktivitas' => ($tanam->jumlah_bibit * 7)+($tanam->jumlah_bibit * 7 * 0.4)
                    ];
                }else if($jarakTanam<=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 5)+($tanam->jumlah_bibit * 7 *0.4)-($tanam->jumlah_bibit * 7 * 0.05)
                    ];
                }
            }else{
                //return 'd '.$tgl->addMonths(11);
                if($jarakTanam>=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5)->addDays(19),
                    'produktivitas' => ($tanam->jumlah_bibit * 7)
                    ];
                }else if($jarakTanam<=9){
                    $panen = [
                    'id_tanam' => $tanam->id_tanam,
                    'tanggal_panen' => $tgl->addMonths(5),
                    'produktivitas' => ($tanam->jumlah_bibit * 7)-($tanam->jumlah_bibit * 7 *0.05)
                    ];
                }
            }
        }
        $tanam->panen->update($panen);
        return redirect('tanam');
    }

}
