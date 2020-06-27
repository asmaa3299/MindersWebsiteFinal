<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    //
    protected $fillable = [
        'id', 'name','image', 'phone_number','gmail','postion', 'jobTitle'
    ];
}
