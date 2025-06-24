<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ChatNodesSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('chat_nodes')->insert([
            // Nó raiz
            ['id' => 1, 'pergunta' => 'Como posso te ajudar?', 'id_pai' => null, 'fim' => false, 'resposta' => 'Escolha uma da opções e tire suas suas dúvidas em relação as Eleições UEMASUL com nosso assistente virtual'],

            // Primeira camada
            ['id' => 10, 'pergunta' => '📌 Candidatos', 'id_pai' => 1, 'fim' => false, 'resposta' => 'Os canditatos São: <!-- Cabeçalho de chat ao estilo WhatsApp com CSS inline --> <div style="display: flex; align-items: center; gap: 12px; padding: 10px 16px; background: #075E54; color: #ffffff; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;"> <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="Foto de perfil do usuário" style="width: 44px; height: 44px; border-radius: 50%; object-fit: cover; border: 2px solid #ffffff;"><div class="user-info"><div style="font-weight: 600; font-size: 1rem; line-height: 1.2;">Candito A/Chapa A</div><div style="font-size: 0.75rem; opacity: 0.8;">online</div></div></div> 

                <div style="display: flex; align-items: center; gap: 12px; padding: 10px 16px; background: #075E54; color: #ffffff; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
                <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="Foto de perfil do usuário" style="width: 44px; height: 44px; border-radius: 50%; object-fit: cover; border: 2px solid #ffffff;">
                <div class="user-info"><div style="font-weight: 600; font-size: 1rem; line-height: 1.2;">Candito B/Chapa B</div><div style="font-size: 0.75rem; opacity: 0.8;">online</div></div></div> 

                <div style="display: flex; align-items: center; gap: 12px; padding: 10px 16px; background: #075E54; color: #ffffff; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
                <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="Foto de perfil do usuário" style="width: 44px; height: 44px; border-radius: 50%; object-fit: cover; border: 2px solid #ffffff;">
                <div class="user-info"><div style="font-weight: 600; font-size: 1rem; line-height: 1.2;">Candito C/Chapa</div><div style="font-size: 0.75rem; opacity: 0.8;">online</div></div></div>'],

            ['id' => 20, 'pergunta' => '🗳️ Votação', 'id_pai' => 1, 'fim' => false, 'resposta' => null],
            ['id' => 30, 'pergunta' => '📊 Apuração', 'id_pai' => 1, 'fim' => false, 'resposta' => null],
            ['id' => 40, 'pergunta' => '📮 Recursos', 'id_pai' => 1, 'fim' => false, 'resposta' => null],

            // Seção: Candidatos
            ['id' => 11, 'pergunta' => 'Quem pode ser candidato?', 'id_pai' => 10, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 37 Serão candidatos a compor a lista tríplice os docentes da carreira do magistério superior da UEMASUL, pertencentes às classes de professores assistente, adjunto, associado, titular, ou os que possuam título de mestre ou doutor.
            Parágrafo único O docente que estiver exercendo o cargo de reitor ou vice-reitor da UEMASUL, poderá reeleger-se por igual período, para o mesmo cargo.'],
            ['id' => 12, 'pergunta' => 'Precisa se afastar de cargo comissionado?', 'id_pai' => 10, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 38 Os candidatos à eleição para Reitor e Vice-reitor, que estejam ocupando Cargos em Comissão, deverão afastar-se 90 (noventa) dias antes da data da eleição.
            Parágrafo único O(A) Reitor(a) e Vice-Reitor(a) no exercício do cargo não necessitam afastar-se para concorrer à reeleição.'],
            ['id' => 13, 'pergunta' => 'Como funciona a inscrição da chapa?', 'id_pai' => 10, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 40 O pedido de registro de chapas, perante à comissão eleitoral, será feito mediante requerimento, assinado pelos dois candidatos e acompanhado de certidão expedida pela PROPLAD de que não estão em efetivo exercício do cargo na UEMASUL, que não respondem a processo administrativo e preenchem os requisitos estabelecido no caput do artigo 37 deste Regimento.'],
            ['id' => 14, 'pergunta' => 'Quais documentos são exigidos?', 'id_pai' => 10, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Lista de Documentos'],

            // Seção: Votação
            ['id' => 21, 'pergunta' => 'Quem pode votar?', 'id_pai' => 20, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 45 Poderão participar do processo de votação para composição da lista tríplice:
            I - Os docentes do quadro de magistério superior da UEMASUL, inclusive os visitantes e os substitutos. II - Os alunos que estiverem regularmente matriculados nos cursos de graduação e Pós-Graduação da UEMASUL. III - Os servidores técnico-administrativos do quadro e os contratados em efetivo exercício na UEMASUL.
            Parágrafo único em quaisquer dos casos previstos nos incisos deste artigo, o eleitor somente poderá participar do processo uma única vez, como integrante da classe que conferir o maior peso a seu voto.'],
            ['id' => 22, 'pergunta' => 'Como será a votação?', 'id_pai' => 20, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 46 As eleições ocorrerão por meio eletrônico, no sistema SIGAA da UEMASUL. As regras e critérios, além das informações básicas de funcionamento do sistema eleitoral do SIGAA serão publicizadas no edital de convocação para as eleições.'],
            ['id' => 23, 'pergunta' => 'Quantas chapas posso escolher?', 'id_pai' => 20, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 47 Para composição da lista tríplice cada eleitor poderá votar em até três chapas escritas.'],

            // Seção: Apuração
            ['id' => 31, 'pergunta' => 'Como funciona a apuração?', 'id_pai' => 30, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 52 Após concluído o prazo de votação estabelecido no Edital, o acesso ao sistema de votação eletrônico é fechado pelo presidente da comissão eleitoral e a apuração é gerada automaticamente em ato público.'],

            // Seção: Recursos
            ['id' => 41, 'pergunta' => 'Como recorrer de decisões da comissão?', 'id_pai' => 40, 'fim' => true, 'resposta' => 'De acordo com RESOLUÇÃO N° 188/2022 CONSUL/UEMASUL - Art. 55 Caberá recurso ao CONSUN dos atos da comissão eleitoral, das mesas receptoras e juntas apuradoras, até um dia útil, após o encerramento da lavratura da Ata de Eleição. 
            Parágrafo único O pedido de recurso deverá ser encaminhado, através do Protocolo Geral, durante o horário normal de expediente.'],
        ]);
    }
}
