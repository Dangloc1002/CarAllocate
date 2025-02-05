<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Request extends Model
{
    use HasFactory;
    protected $table = 'requests';
    protected $fillable = 
    [
    'passenger', 
    'group_id',
    'passenger_id', 
    'guest', 
    'datetime', 
    'status', 
    'driver_id', 
    'driver_name', 
    'location_from_id', 
    'province_from',
    'province_to',
    'location_from_name', 
    'location_to_id', 
    'location_to_name',
    'priority_user',
    'phone',
    'email',
    'has_lunch',
    'note',
    'role_user',
    'time_et',
    'start',
    'end'
    ];
}
