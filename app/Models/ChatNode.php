<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChatNode extends Model
{
    protected $table = 'chat_nodes';
    public $timestamps = false;

    protected $fillable = ['pergunta', 'id_pai', 'fim'];
}
