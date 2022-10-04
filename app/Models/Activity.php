<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Activity extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable=[
        'name',
        'description'
    ];

    public function plans()
    {
        return $this->belongsToMany(Plan::class)->withPivot('new_price','old_price');
    }
}
