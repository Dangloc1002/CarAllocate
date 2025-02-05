<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    use HasFactory;
    protected $table = 'groups';
    protected $fillable = 
    [
    'location_from_name', 
    'location_to_name',
    'province_from',
    'province_to',
    'start',
    'end',
    'status',
    'priority',
    'driver_id',
    'driver_name',
    'priority'
    ];

    public function groupRequests()
    {
        return $this->hasMany(Request::class, 'group_id', 'id');
    }
}
