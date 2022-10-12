<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DressCategory extends Model
{
    use HasFactory;
    protected $fillable = [
        'd_name',
    ];
}
