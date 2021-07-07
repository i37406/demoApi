<?php

namespace App\Models;

use App\Models\User;
use App\Models\Review;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;
    protected $fillable = ['name','detail','price','stock','discount','user_id'];
   
    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

   
}
