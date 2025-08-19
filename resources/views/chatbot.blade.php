<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon">
    <title>Eleições UEMASUL 2025</title>
    <style>
        * { font-family: 'Inter', Arial, sans-serif; }
        body { margin: 0; background:#ece5dd; }

        .chat-container {
            max-width:400px; height:100vh; margin:auto;
            display:flex; flex-direction:column; background:#fff;
            box-shadow:0 0 10px rgba(0,0,0,.1);
        }
        .chat-header {
            background:#075E54; color:#fff; padding:20px;
            text-align:center; font-weight:bold;
        }
        .chat-body {
            flex:1; padding:10px; overflow-y:auto;
            display:flex; flex-direction:column;
            background:#ece5dd;
        }
        .message {
            max-width:80%; margin:5px 0; padding:10px 14px;
            border-radius:8px; line-height:1.4; font-size:14px;
            word-wrap: break-word;
            opacity:0; transform:translateY(20px);
            animation: fadeInUp .3s ease forwards;
        }
        .user {
            background:#dcf8c6; align-self:flex-end;
        }
        .bot {
            background:#fff; align-self:flex-start; border:1px solid #ddd;
        }

        /* Bloco de opções estilo WhatsApp */
        .options-container {
            display:flex;
            flex-direction:column;
            gap:6px;
            margin:6px 0;
            align-self:flex-start;
            opacity:0; transform:translateY(20px);
            animation: fadeInUp .4s ease forwards;
        }
        .option-btn {
            background:#fff;
            border:1px solid #ddd;
            border-radius:6px;
            padding:8px 12px;
            font-size:14px;
            cursor:pointer;
            text-align:left;
            transition:background .2s;
        }
        .option-btn:hover {
            background:#f0f0f0;
        }

        /* Animação de entrada */
        @keyframes fadeInUp {
            from { opacity:0; transform:translateY(20px); }
            to   { opacity:1; transform:translateY(0); }
        }
    </style>
</head>
<body>
<div class="chat-container">
    <div class="chat-header">ELEIÇÕES UEMASUL 2025</div>
    <div class="chat-body" id="chatBody"></div>
</div>

<script>
const chatBody = document.getElementById('chatBody');
let historico = [];

/**
 * Busca um nó pelo ID e exibe mensagem + opções
 */
function mostrarEstado(id = '') {
    fetch(`/chatbot/responder/${id}`)
        .then(r => r.json())
        .then(data => {
            addMessage(data.mensagem, 'bot');

            const optionsDiv = document.createElement('div');
            optionsDiv.className = 'options-container';

            // Botão voltar
            if (historico.length > 0) {
                const btnVoltar = document.createElement('button');
                btnVoltar.className = 'option-btn';
                btnVoltar.textContent = '⬅ Voltar';
                btnVoltar.onclick = voltarEstado;
                optionsDiv.appendChild(btnVoltar);
            }

            // Opções
            if (data.opcoes.length > 0) {
                data.opcoes.forEach(opt => {
                    const btn = document.createElement('button');
                    btn.className = 'option-btn';
                    btn.textContent = opt.texto;
                    btn.onclick = () => {
                        historico.push(id);
                        addMessage(opt.texto, 'user');
                        optionsDiv.remove(); // remove os botões antigos
                        setTimeout(() => mostrarEstado(opt.id), 400);
                    };
                    optionsDiv.appendChild(btn);
                });
            }
            else if (data.fim) {
                const reiniciar = document.createElement('button');
                reiniciar.className = 'option-btn';
                reiniciar.textContent = '🔄 Voltar ao início';
                reiniciar.onclick = () => {
                    historico = [];
                    chatBody.innerHTML = '';
                    mostrarEstado();
                };
                optionsDiv.appendChild(reiniciar);
            }

            chatBody.appendChild(optionsDiv);
            chatBody.scrollTop = chatBody.scrollHeight;
        });
}

/**
 * Voltar ao estado anterior
 */
function voltarEstado() {
    if (historico.length > 0) {
        const anterior = historico.pop();
        chatBody.innerHTML = '';
        mostrarEstado(anterior);
    }
}

/**
 * Adiciona mensagem no chat
 */
function addMessage(texto, classe) {
    const div = document.createElement('div');
    div.className = `message ${classe}`;
    div.innerHTML = texto;
    chatBody.appendChild(div);
    chatBody.scrollTop = chatBody.scrollHeight;
}

mostrarEstado();
</script>
</body>
</html>
