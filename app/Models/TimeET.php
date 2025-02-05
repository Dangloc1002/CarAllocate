<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TimeET extends Model
{
    use HasFactory;

    protected $table = 'time-et';

    protected $fillable = 
    [
    'from_id', 
    'location_from_name',
    'to_id', 
    'location_to_name', 
    'time_et',
    ];
}
