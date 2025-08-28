-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ant_chatbot
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_nodes`
--

DROP TABLE IF EXISTS `chat_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pergunta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pai` bigint unsigned DEFAULT NULL,
  `fim` tinyint(1) NOT NULL DEFAULT '0',
  `resposta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `chat_nodes_id_pai_foreign` (`id_pai`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_nodes`
--

LOCK TABLES `chat_nodes` WRITE;
/*!40000 ALTER TABLE `chat_nodes` DISABLE KEYS */;
INSERT INTO `chat_nodes` VALUES (1,'Como posso te ajudar?',NULL,0,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\">👋 Olá! <br><br>Escolha uma das opções abaixo e tire suas dúvidas em relação às <strong style=\"color:#075E54;\">Eleições UEMASUL.</strong></div></div></body></html>\r\n\r\n<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\">Se prefeir você pode ta acessando diretamente o Edital referente as Eleições UEMASUL-2025 no botão <br><br><a href=\"https://www.uemasul.edu.br/publicacoes/?td=1&id=2471\" target=\"_blank\" style=\"background-color: #25D366; color: white; padding: 5px 15px; text-decoration: none; border-radius: 5px; font-weight: bold; font-family: sans-serif;\">Click Aqui</a></strong></a></div></div></body></html>'),(10,'📌 Candidatos',1,0,'Conheça nossas candidaturas a Reitor(a) e Vice-Reitor(a) da UEMASUL. <br>Selecione abaixo e descubra como juntos podemos fortalecer nossa universidade.'),(20,'🗳️ Votação',1,0,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\"> 💡 <strong>Importante!</strong><br>A eleição para o reitorado da UEMASUL será no dia<strong> 09 de outubro de 2025.</strong><br><br> Para mais informações, consulte os Editais referentes à Eleição UEMASUL-2025 no botão: <br><br><a href=\"https://www.uemasul.edu.br/publicacoes/?td=1&id=2471\" target=\"_blank\" style=\"background-color: #25D366; color: white; padding: 5px 15px; text-decoration: none; border-radius: 5px; font-weight: bold; font-family: sans-serif;\">Clique Aqui</a></strong></a></div></div></body></html>'),(40,'📮 Recursos',1,0,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\"> 😊 Então..!  <br><br><strong>De acordo o <a href=\"https://www.uemasul.edu.br/publicacoes/?td=1&id=2471\" target=\"_blank\">EDITAL Nº 001/2025-CE/UEMASUL</a> no, § 7 e § 8 do Art. 2º. </strong> A Comissão Eleitoral pode rejeitar o registro de chapas que não cumpram as regras estabelecidas no Edital e no Regimento da UEMASUL, desde que justifique o motivo. Se uma chapa for rejeitada, o processo de recurso funciona da seguinte forma:</p><ol><li>A chapa é comunicada da rejeição em até <strong>48 horas</strong>.</li><li>Ela pode então solicitar que a própria Comissão Eleitoral reconsidere a decisão.</li><li>Caso a rejeição seja mantida, a chapa tem um prazo final de <strong>48 horas</strong> para recorrer ao Conselho Universitário.</li></ol></div></div></body></html>'),(11,'Quem pode ser candidato?',10,1,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\"> 😉 Vamos lá! <br><br> De acordo com a <strong>RESOLUÇÃO N° 188/2022 CONSUN/UEMASUL - Art. 37</strong> - Serão candidatos a compor a lista tríplice os docentes da carreira do magistério superior da UEMASUL, pertencentes às classes de professores assistente, adjunto, associado, titular, ou os que possuam título de mestre ou doutor. <br><br><strong>Parágrafo único</strong> - O docente que estiver exercendo o cargo de reitor ou vice-reitor da UEMASUL, poderá reeleger-se por igual período, para o mesmo cargo.</div></div></body></html>'),(12,'Precisa se afastar de cargo comissionado?',10,1,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\"> 🤔 Então... <br><br><strong>De acordo com RESOLUÇÃO N° 188/2022 CONSUN/UEMASUL - Art. 38</strong> -  Os candidatos à eleição para Reitor e Vice-reitor, que estejam ocupando Cargos em Comissão, deverão afastar-se 90 (noventa) dias antes da data da eleição. <br><br><strong>Parágrafo único</strong> - O(A) Reitor(a) e Vice-Reitor(a) no exercício do cargo não necessitam afastar-se para concorrer à reeleição.</div></div></body></html>'),(13,'Como funciona a inscrição da chapa?',10,1,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\"> 😊 Olha só, <br><br> Para fazer a incrição, <strong>De acordo com RESOLUÇÃO N° 188/2022 CONSUN/UEMASUL - Art. 40</strong> - O pedido de registro de chapas, perante à comissão eleitoral, será feito mediante requerimento, assinado pelos dois candidatos e acompanhado de certidão expedida pela PROPLAD de que não estão em efetivo exercício do cargo na UEMASUL, que não respondem a processo administrativo e preenchem os requisitos estabelecido no caput do artigo 37 deste Regimento..</div></div></body></html>'),(14,'Como faço para me candidatar para aos cargos?',10,1,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\"> Conforme o <a href=\"https://www.uemasul.edu.br/publicacoes/?td=1&id=2471\" target=\"_blank\">EDITAL Nº 001/2025-CE/UEMASUL</a> no, Artigo 2. § 6º. Cada candidato a Reitor(a) fará sua inscrição juntamente com a de um candidato a Vice-Reitor(a), devendo o nome de ambos ser votado conjuntamente, em forma de chapa, conforme previsto nos Art. 39 e Art. 40 do Regimento da Reitoria da Universidade Estadual da Região Tocantina – UEMASUL e conforme a Lei nº 10.525/2016.</div></div></body></html>'),(21,'Quem pode votar?',20,1,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\"> 😊Vamos lá! <br><br> <strong>De acordo com RESOLUÇÃO N° 188/2022 CONSUN/UEMASUL - Art. 45,</strong> poderão participar do processo de votação para composição da lista tríplice: <br>I - Os docentes do quadro de magistério superior da UEMASUL, inclusive os visitantes e os substitutos. <br>II - Os alunos que estiverem regularmente matriculados nos cursos de graduação e Pós-Graduação da UEMASUL. <br>III - Os servidores técnico-administrativos do quadro e os contratados em efetivo exercício na UEMASUL.<br><br><strong>Parágrafo único</strong> - Em quaisquer dos casos previstos nos incisos deste artigo, o eleitor somente poderá participar do processo uma única vez, como integrante da classe que conferir o maior peso a seu voto.</div></div></body></html>'),(22,'Como será a votação?',20,1,' <!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\">  Olha só: <br><br> <strong>De acordo com RESOLUÇÃO N° 188/2022 CONSUN/UEMASUL - Art. 46</strong>, as eleições ocorrerão por meio eletrônico, no sistema SigEleição da UEMASUL. As regras e critérios, além das informações básicas de funcionamento do sistema eleitoral do SIGAA serão publicizadas no edital de convocação para as eleições. <br> </div></div></body></html>'),(23,'Quantas chapas posso escolher?',20,1,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\">😊 Veja bem, <br><br> Segundo a <strong>Seção IV, Art. 52 da RESOLUÇÃO N° 188/2022 CONSUN/UEMASUL,</strong> você poderá votar apenas uma única vez, em uma única chapa</div></div></body></html>'),(41,'Como recorrer de decisões da comissão?',40,1,'<!DOCTYPE html><html lang=\"pt-BR\"><head><meta charset=\"UTF-8\"><title>Assistente Virtual - Eleições UEMASUL</title><style>@keyframes fadeIn{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:translateY(0);}}</style></head><body style=\"background-color:#ece5dd;margin:0;padding:20px;font-family:sans-serif;\"><div style=\"animation:fadeIn 1s ease-in-out;margin:20px 0;padding:12px 15px;border-radius:10px 10px 10px 0;max-width:90%;color:#000;font-size:15px\">😊 Então... <br><br><strong>De acordo com RESOLUÇÃO N° 188/2022 CONSUN/UEMASUL - Art.52 </strong> - Caberá recurso ao CONSUN dos atos da comissão eleitoral, das mesas receptoras e juntas apuradoras, até um dia útil, após o encerramento da lavratura da Ata de Eleição. <br><br><strong>Parágrafo único</strong>- O pedido de recurso deverá ser encaminhado, através do Protocolo Geral, durante o horário normal de expediente.</div></div></body></html>');
/*!40000 ALTER TABLE `chat_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_06_09_000000_create_chat_nodes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('fzzZn6tXOParPFi5jroGV3kMplkfVDFCTicqHaT9',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTRnT01mUVp6aWJxcUVoTFpub2ZoZ0xmTkZ0bFZrZGdmdHpJU2FmNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGF0Ym90L3Jlc3BvbmRlci8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1755630033);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ant_chatbot'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-25  8:08:24
