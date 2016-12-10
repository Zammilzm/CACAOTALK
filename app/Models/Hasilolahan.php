<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hasilolahan extends Model
{
    protected $table = 'olahan_pasca_produksi';
    protected $primaryKey = 'id_hasil_produksi';
    protected $fillable = ['id_hasil_produksi','id_produksi','hasil_produksi_total','jumlah_lemak_kakao','jumlah_permen_cokelat','jumlah_bubuk_kakao','jumlah_bubuk_cokelat'];


    public $timestamps = false;
}
