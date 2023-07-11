<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    use HasFactory;

    protected $primaryKey  = 'cat_codigo';
    protected $table = 'categorias';

    //public $timestamps = false;

    protected $fillable = ['cat_codigo','cat_descripcion'];



}
