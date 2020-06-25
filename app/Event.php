<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = [
        'id', 'name','cover', 'place','time','state','description','formlink'
    ];
    protected $casts=[
        'speakers'=>'array',
        'speakerimage'=>'array',
        'agenda'=>'array',
    ];
}
