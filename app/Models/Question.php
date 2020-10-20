<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $fillable =['question', 'subject','level','difficulty','user_id'];
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
