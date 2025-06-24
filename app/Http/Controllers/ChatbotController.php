<?php

namespace App\Http\Controllers;

use App\Models\ChatNode;
use Illuminate\Http\JsonResponse;

class ChatbotController extends Controller
{
    /**
     * Retorna o nó atual e suas opções filhas.
     * @param  int|null $id  ID do nó solicitado ou null para o nó raiz.
     */
    public function responder(int $id = null): JsonResponse
    {
        $node = $id
            ? ChatNode::findOrFail($id)
            : ChatNode::whereNull('id_pai')->firstOrFail();

        $opcoes = ChatNode::where('id_pai', $node->id)->get(['id', 'pergunta']);

        return response()->json([
            'mensagem' => $node->resposta,
            'opcoes'   => $opcoes->map(fn ($o) => ['id' => $o->id, 'texto' => $o->pergunta]),
            'fim'      => $node->fim,
        ]);
    }
}