<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
    use HasFactory;

    protected $fillable=[
        'name',
        'duration'	
    ];

    public function activities()
    {
        return $this->belongsToMany(Activity::class)->withPivot('new_price','old_price');
    }
}
