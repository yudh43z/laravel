<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'guru';
    protected $guarded = ['id'];
}
