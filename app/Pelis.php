<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelis extends Model
{
    protected $pelis = 'pelis';

   
    protected $fillable = ['nombre', 'desc', 'link'];
    protected $guarded = ['id'];






}
