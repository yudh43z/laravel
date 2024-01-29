<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KbmInfo extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'kbm_info';
    protected $guarded = ['id'];

    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'id_siswa', 'id');
    }

    public function kbm()
    {
        return $this->belongsTo(Kbm::class, 'id_kbm', 'id');
    }
}
