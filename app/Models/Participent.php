<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Participent extends Model
{
    use HasFactory;

    protected $fillable = [
        'batch_id',
        'cat_id',
        'pay',
        'name',
        'g_name',
        'email',
        'mobile',
        'fb_link',
        'address',
        'thana',
        'district_id',
        'division_id',
        'blood_id',
        'dress_cat_id',
        'size_id',
        'photo',
        'organization',
        'designation',
        'org_address',
        'status'
    ];
}
