<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Cria a tabela chat_nodes.
     */
    public function up(): void
    {
        Schema::create('chat_nodes', function (Blueprint $table) {
            $table->id();
            $table->string('pergunta');
            // referência para o “nó pai” (pode ser nulo para o nó inicial)
            $table->foreignId('id_pai')
                  ->nullable()
                  ->constrained('chat_nodes')
                  ->nullOnDelete();
            $table->boolean('fim')->default(false);
            $table->string('resposta')->nullable();
        });
    }

    /**
     * Reverte a migration.
     */
    public function down(): void
    {
        Schema::dropIfExists('chat_nodes');
    }
};