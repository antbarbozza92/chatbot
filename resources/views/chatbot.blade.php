<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images\favicon.svg" type="image/x-icon">
    <title>Eleições UEMASUL 2025</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter+Tight:ital,wght@0,100..900;1,100..900&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter+Tight:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter+Tight:ital,wght@0,100..900;1,100..900&display=swap');
        * { font-family: 'Inter', 'Inter Tight', Arial, sans-serif; }
        body { margin: 10px; font-family: 'Inter', 'Inter Tight', Arial, sans-serif; background:#ece5dd; }
        .chat-container { max-width:400px; height:100vh; margin: auto;
                          display:flex; flex-direction:column; background:#fff;
                          box-shadow:0 0 10px rgba(0,0,0,.1); }
        .chat-header   { background:#059669; color:#fff; padding:26px 10px;
                          text-align:center; font-weight:bold; }
        .chat-body     { flex:1; padding:10px; overflow-y:auto;
                          display:flex; flex-direction:column; }
        .message       { max-width:80%; margin:5px 0; padding:10px;
                          border-radius:8px; line-height:1.4; }
        .user          { background:#d1fae5; align-self:flex-end; }
        .bot           { background:#f1f0f0; align-self:flex-start; }
        .chat-footer   { padding:35px; border-top:1px solid #BB5050;
                          display:flex; flex-wrap:wrap; gap:10px;
                          justify-content:center; }
        .option-btn    { background: #6ee7b7; color:#000000; border:none;
                          font-weight: 600; padding:20px 25px; border-radius:10px; cursor:pointer;
                          transition:background .3s; }
        .option-btn:hover { background:#128C7E; }
    </style>
</head>
<body>
<div class="chat-container">
    <div class="chat-header">ELEIÇÕES UEMASUL 2025</div>
    <div class="chat-body" id="chatBody">
        <div class="message bot">Olá! Gostaria de tirar algumas dúvidas em relaçãos às Eleições UEMASUL 2025?</div>
        <img src="" alt="">
    </div>
    <div class="chat-footer" id="chatOptions"></div>
</div>

<script>
const chatBody    = document.getElementById('chatBody');
const chatOptions = document.getElementById('chatOptions');

/**
 * Busca um nó pelo ID e exibe mensagem + botões.
 * @param {Number|String} id
 */
function mostrarEstado(id = '') {
    fetch(`/chatbot/responder/${id}`)
        .then(r => r.json())
        .then(data => {
            addMessage(data.mensagem, 'bot');
            chatOptions.innerHTML = '';

            if (data.opcoes.length > 0) {
                data.opcoes.forEach(opt => {
                    const btn   = document.createElement('button');
                    btn.className = 'option-btn';
                    btn.textContent = opt.texto;
                    btn.onclick = () => {
                        addMessage(opt.texto, 'user');
                        setTimeout(() => mostrarEstado(opt.id), 400);
                    };
                    chatOptions.appendChild(btn);
                });
            }
            else if (data.fim) {
                const voltar = document.createElement('button');
                voltar.className = 'option-btn';
                voltar.textContent = 'Voltar ao início';
                voltar.onclick = () => mostrarEstado();
                chatOptions.appendChild(voltar);
            }
        });
}

/**
 * Adiciona uma bolha de mensagem.
 * @param {String} texto
 * @param {String} classe  'user' | 'bot'
 */
function addMessage(texto, classe) {
    const div   = document.createElement('div');
    div.className = `message ${classe}`;
    div.innerHTML = texto;
    chatBody.appendChild(div);
    chatBody.scrollTop = chatBody.scrollHeight;
}

// inicializa
mostrarEstado();
</script>
</body>
</html>