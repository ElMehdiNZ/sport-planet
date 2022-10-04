<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Site extends Model implements HasMedia
{
    use HasFactory,InteractsWithMedia;
    
    protected $table='sites';
    protected $primaryKey='id';
    protected $fillable=[
        'name',
    ];
}
