-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/11/2024 às 04:27
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `taste`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `album`
--

CREATE TABLE `album` (
  `cod_album` int(11) NOT NULL,
  `titulo_album` varchar(100) DEFAULT NULL,
  `ano_lancamento` date DEFAULT NULL,
  `genero_musical` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `album`
--

INSERT INTO `album` (`cod_album`, `titulo_album`, `ano_lancamento`, `genero_musical`) VALUES
(1, 'Zodíaco', '2020-12-15', 'Rap'),
(2, 'Novas Histórias', '2016-10-30', 'Sertanejo'),
(3, 'Chico Buarque', '1978-11-23', 'Música Popular Brasileira'),
(4, 'Freudian', '2017-08-03', 'R&B/Soul'),
(5, 'Skylab V', '2004-04-09', 'Rock'),
(6, 'Poesia Acústica 7: Céu Azul', '2019-07-05', 'Hip-Hop'),
(7, 'Caneta Azul', '2020-08-14', 'Música Regional Brasileira'),
(8, 'Roça no Topo', '2023-01-27', 'Sertanejo'),
(9, 'Ao Vivo no Buteco', '2019-12-13', 'Pagode'),
(10, 'Realidade', '2017-01-13', 'Sertanejo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `artista`
--

CREATE TABLE `artista` (
  `cod_artista` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `genero_musical_artista` varchar(100) DEFAULT NULL,
  `nro_seguidores` int(11) DEFAULT NULL,
  `ano_estreia` date DEFAULT NULL,
  `biografia` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `artista`
--

INSERT INTO `artista` (`cod_artista`, `nome`, `genero_musical_artista`, `nro_seguidores`, `ano_estreia`, `biografia`) VALUES
(1, 'Marília Mendonça', 'Sertanejo', 1000, '2014-01-01', 'Marília Dias Mendonça foi uma cantora, compositora e instrumentista brasileira. Mendonça era reconhecida como líder do subgênero musical feminejo — sertanejo por mulheres — e sua contribuição para o empoderamento feminino revolucionou o universo da música sertaneja entre as décadas de 2010 e 2020.'),
(2, 'Xamã', 'RAP', 5, '2016-01-01', 'Xamã tem 32 anos e foi criado no bairro de Sepetiba, Zona Oeste do Rio. Xamã significa um sacerdote poderoso do xamanismo e o apelido do rapper surgiu por conta de sua semelhança com um índigena. Foi nas rodas de freestyle que o relacionaram com o personagem do jogo Mortal Kombat, o Nightwolf.'),
(3, 'Henrique e Juliano', 'Sertanejo', 1000, '2010-01-01', 'Os irmãos nasceram na cidade de Palmeirópolis, no interior do estado do Tocantins e possuem uma trajetória longa pela busca do sonho de viver da música. Felizmente, a família dos dois sempre esteve presente ao lado desse sonho, sendo que o pai dos meninos era um dos maiores fãs e incentivadores da dupla.'),
(4, 'Daniel Caesar', 'R&B/soul', 500, '2013-01-01', 'Ashton Simmonds (nascido em 5 de abril de 1995), mais conhecido por seu nome artístico Daniel Caesar, é um canadense, indicado ao Grammy, cantor e compositor de R&B e soul. Depois de lançar de forma independentes dois elogiados EPs, Praise Break e Pilgrim\'s Paradise, Caesar lançou seu primeiro álbum, Freudian, em agosto de 2017, que também recebeu aclamação da crítica especializada.'),
(5, 'Pineapple StormTV', 'Rap Nacional', 130000, '2015-08-01', 'Poesia Acústica é um projeto, nascido no Rio de Janeiro, que apresenta canções de rap com diferentes temas. Os músicos faziam cyphers – batalhas de rimas – e a partir daí decidiram montar um próprio canal com foco em espalhar suas poesias.'),
(6, 'Ana Castela', 'Sertanejo', 2, '2021-01-01', 'Ana Castela é uma cantora, compositora  instrumentalista brasileira. Tornou-se conhecida pela música \"Pipoco\", lançada em parceria com a também cantora Melody e o músico DJ Chris no Beat.'),
(7, 'Rogério Tolomei Teixeira', 'Música Regional Brasileira', 300000, '1999-01-01', 'Rogério Tolomei Teixeira, mais conhecido por seu nome artístico Rogério Skylab (Rio de Janeiro, 2 de setembro de 1956), é um cantor, compositor, violonista, letrista, escritor, poeta, ensaísta, colunista, ator, músico, ex-apresentador de televisão, ex-bancário e produtor de discos brasileiro. Algumas de suas composições mais notáveis são \"Matador de Passarinho\", \"Motosserra\", \"Fátima Bernardes Experiência\" e \"Chico Xavier & Roberto Carlos\".'),
(8, 'Grupo Menos é Mais', 'Samba e Pagode', 1000, '2017-01-01', 'Menos é Mais é um grupo de pagode formado em 2017 na cidade de Brasília por Duzão (vocais), Gustavo Góes (percussão), Jorge Farias (percussão), Paulinho Félix (percussão) e Ramon Alvarenga (percussão). O grupo ganhou notoriedade por regravar faixas antigas de sucesso de outros cantores. Em 2021, o Menos é Mais lançou Plano Piloto, primeiro álbum com músicas autorais.'),
(9, 'Manoel Jardim Gomes', 'Música Regional Brasileira', 22, '2019-07-01', 'Manoel Jardim Gomes, mais conhecido como Manoel Gomes (Balsas, 2 de dezembro de 1969), é um cantor e compositor brasileiro. É conhecido por criar a música \"Caneta Azul\", que se tornou um meme da Internet.'),
(10, 'Francisco Buarque de Hollanda', 'MPB', 5000, '1964-01-01', 'Cantor, compositor, escritor, dramaturgo, Chico Buarque é um dos principais artistas brasileiros. Além disso, é uma personalidade intelectual e atuante na política. Tido como um dos maiores nomes da Música Popular Brasileira (MPB), compôs inúmeras canções importantes, muitas delas com críticas e denúncias sociais.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `artista_album`
--

CREATE TABLE `artista_album` (
  `cod_artista_album` int(11) NOT NULL,
  `cod_album` int(11) DEFAULT NULL,
  `cod_artista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `artista_album`
--

INSERT INTO `artista_album` (`cod_artista_album`, `cod_album`, `cod_artista`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 10),
(4, 4, 4),
(5, 5, 7),
(6, 6, 5),
(7, 7, 9),
(8, 8, 6),
(9, 9, 8),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `hist_avaliacao`
--

CREATE TABLE `hist_avaliacao` (
  `cod_hist_aval` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_musica` int(11) DEFAULT NULL,
  `data_avaliacao` date DEFAULT NULL,
  `nota` int(11) DEFAULT NULL,
  `horario_avaliacao` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hist_avaliacao`
--

INSERT INTO `hist_avaliacao` (`cod_hist_aval`, `cod_usuario`, `cod_musica`, `data_avaliacao`, `nota`, `horario_avaliacao`) VALUES
(1, 9, 3, '2022-08-16', 5, '13:05:55'),
(2, 7, 10, '2022-09-01', 3, '01:47:03'),
(3, 5, 2, '2022-09-13', 4, '11:22:00'),
(4, 1, 9, '2022-09-20', 5, '21:09:12'),
(5, 4, 1, '2022-10-02', 5, '23:33:06'),
(6, 2, 7, '2022-11-29', 4, '14:09:01'),
(7, 8, 4, '2022-12-06', 3, '09:01:09'),
(8, 10, 5, '2023-01-24', 2, '19:20:18'),
(9, 6, 8, '2023-02-25', 5, '03:53:19'),
(10, 3, 6, '2023-04-03', 1, '16:07:57'),
(11, 7, 11, '2023-06-03', 5, '09:24:15'),
(12, 9, 12, '2023-02-03', 4, '14:53:41'),
(13, 5, 13, '2023-03-06', 2, '06:37:59'),
(14, 2, 14, '2023-07-24', 3, '21:12:43'),
(15, 3, 15, '2023-09-12', 3, '08:45:27'),
(16, 1, 18, '2023-10-05', 1, '17:39:04'),
(17, 4, 17, '2023-12-16', 2, '03:18:52'),
(18, 5, 16, '2023-01-17', 1, '19:56:33'),
(19, 9, 19, '2023-05-08', 4, '12:03:47'),
(20, 8, 20, '2023-08-09', 1, '22:31:08'),
(21, 1, 21, '2023-03-30', 1, '15:27:50'),
(22, 5, 23, '2023-04-02', 3, '10:08:42'),
(23, 6, 22, '2023-01-07', 1, '04:50:12'),
(24, 3, 25, '2023-09-09', 5, '14:29:18'),
(25, 10, 24, '2023-02-10', 1, '00:46:23'),
(26, 7, 28, '2023-04-11', 4, '18:14:22'),
(27, 4, 27, '2023-06-15', 1, '11:20:36'),
(28, 2, 26, '2023-04-18', 5, '23:51:10'),
(29, 7, 34, '2023-08-06', 1, '07:04:19'),
(30, 9, 29, '2023-07-26', 5, '01:33:32'),
(31, 1, 30, '2023-05-14', 3, '16:21:08'),
(32, 5, 31, '2023-03-23', 1, '20:58:38'),
(33, 4, 32, '2023-02-28', 1, '02:55:29'),
(34, 9, 33, '2023-06-06', 2, '13:42:56'),
(35, 10, 35, '2023-08-09', 1, '09:37:23'),
(36, 2, 36, '2023-01-12', 4, '00:30:43'),
(37, 8, 37, '2023-02-17', 2, '19:24:41'),
(38, 4, 38, '2023-07-22', 1, '08:15:11'),
(39, 5, 40, '2023-08-21', 3, '13:11:12'),
(40, 2, 39, '2023-05-20', 1, '03:42:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hist_reproducao`
--

CREATE TABLE `hist_reproducao` (
  `cod_hist_repr` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_musica` int(11) DEFAULT NULL,
  `data_reproducao` date DEFAULT NULL,
  `horario_reproducao` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hist_reproducao`
--

INSERT INTO `hist_reproducao` (`cod_hist_repr`, `cod_usuario`, `cod_musica`, `data_reproducao`, `horario_reproducao`) VALUES
(1, 5, 6, '2022-01-18', '15:30:00'),
(2, 2, 1, '2020-03-24', '17:30:00'),
(3, 7, 2, '2023-09-05', '01:33:59'),
(4, 8, 3, '2020-10-10', '12:00:00'),
(5, 3, 5, '2021-02-23', '10:55:33'),
(6, 1, 8, '2020-12-01', '00:00:01'),
(7, 4, 4, '2021-01-01', '06:03:55'),
(8, 6, 7, '2020-09-24', '17:32:00'),
(9, 10, 9, '2020-01-23', '13:00:00'),
(10, 9, 10, '2020-04-05', '07:07:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `musica`
--

CREATE TABLE `musica` (
  `cod_musica` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `album` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `tempo_reproducao` time DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `musica`
--

INSERT INTO `musica` (`cod_musica`, `titulo`, `album`, `genero`, `tempo_reproducao`, `data_lancamento`) VALUES
(1, 'Flor e a Beija-Flor', 'Novas Histórias', 'Sertanejo', '00:03:12', '2016-01-01'),
(2, 'Cálice', 'Chico Buarque', 'MPB', '00:04:34', '1978-01-01'),
(3, 'De quem é a culpa?', 'Realidade', 'Sertanejo', '00:03:22', '2017-01-01'),
(4, 'We Find Love', 'Freudian', 'R&B/soul', '00:04:14', '2018-01-01'),
(5, 'Gemêos', 'Zodíaco', 'rap', '00:03:29', '2020-01-01'),
(6, 'Eu minto', 'Roça no Topo EP 1(Ao Vivo)', 'sertanejo', '00:02:43', '2023-01-01'),
(7, 'Melhor eu ir/Ligando os Fatos/Sonho de Amor/Deixa eu te querer', 'Ao Vivo no Buteco', 'Pagode', '00:08:45', '2019-01-01'),
(8, 'Poesia acústica 7: Céu Azul', 'Poesia Acústica 7: Céu Azul', 'hip-hop', '00:09:35', '2019-01-01'),
(9, 'Eu vou deixar de ser besta', 'Caneta Azul', 'brega', '00:03:37', '2020-01-01'),
(10, 'Você é feia', 'Skylab V', 'funk brasileiro', '00:04:49', '2004-01-01'),
(11, 'Impasse', ' Marília Mendonça - Ao Vivo', 'Sertanejo', '00:03:13', '2015-07-14'),
(12, 'Solteiro Forçado', 'Boiadeira internacional, vol. 1', 'Sertanejo', '00:03:19', '2023-07-07'),
(13, 'A banda', 'Chico Buarque de Hollanda', 'MPB', '00:02:11', '1966-01-01'),
(14, 'João e Maria', 'Chico Buarque Ao Vivo - Le Zenith, Paris', 'MPB', '00:02:50', '1990-01-01'),
(15, 'Apesar De Você', 'Chico Buarque', 'MPB', '00:03:55', '1978-01-01'),
(16, 'Ocho Rios', ' Never Enough', 'R&B/soul', '00:02:33', '2023-04-07'),
(17, 'Homiesexual', ' Never Enough', 'R&B/soul', '00:03:50', '2023-04-07'),
(18, 'Let Me Go', ' Never Enough', 'R&B/soul', '00:03:37', '2023-04-07'),
(19, 'Always', ' Never Enough', 'R&B/soul', '00:04:08', '2023-04-07'),
(20, 'Vince Van Gogh', 'Never Enough', 'R&B/soul', '00:02:44', '2023-04-07'),
(21, 'Aquário(25 horas)', 'Zodíaco', 'rap', '00:03:02', '2020-12-14'),
(22, 'Leão', 'Zodíaco', 'rap', '00:03:16', '2020-12-14'),
(23, 'Escorpião', 'Zodíaco', 'rap', '00:03:29', '2020-12-14'),
(24, 'Peixes', 'Zodíaco', 'rap', '00:02:40', '2020-12-14'),
(25, 'Camisa10 (Ao Vivo)', 'Ao Vivo no Buteco', 'Pagode', '00:03:08', '2019-01-01'),
(26, 'Insegurança / Nem de Graça (Ao Vivo)', 'Ao Vivo no Buteco', 'Pagode', '00:03:29', '2019-01-01'),
(27, 'ainda gosto de você / a primeira namorada / coração deserto (ao vivo)', 'Ao Vivo no Buteco', 'Pagode', '00:04:58', '2019-01-01'),
(28, 'morango do nordeste / megastar / é tarde demais (ao vivo)', 'Ao Vivo no Buteco', 'Pagode', '00:07:34', '2019-01-01'),
(29, 'Poesia acústica 9: Melhor Forma', 'Poesia Acústica 9: Melhor Forma', 'hip-hop', '00:10:15', '2020-01-01'),
(30, 'Poesia acústica 8: Amor e Samba', 'Poesia Acústica 8: Amor e Samba', 'hip-hop', '00:10:13', '2020-01-01'),
(31, 'Poesia acústica 6: Era uma Vez', 'Poesia Acústica 6: Era uma Vez', 'hip-hop', '00:09:45', '2018-01-01'),
(32, 'Poesia acústica 5: Teu Popô', 'Poesia Acústica 5: Teu Popô', 'hip-hop', '00:12:23', '2018-01-01'),
(33, 'Não Me Despreze', 'Caneta Azul', 'brega', '00:03:42', '2020-08-21'),
(34, 'Ela Perdeu a Cabeça', 'Caneta Azul', 'brega', '00:03:58', '2020-08-21'),
(35, 'Maura', 'Caneta Azul', 'brega', '00:03:49', '2020-08-21'),
(36, 'Parabéns', 'Caneta Azul', 'brega', '00:03:18', '2020-08-21'),
(37, 'Legal, Legal', 'Skylab V', 'funk brasileiro', '00:02:59', '2004-01-01'),
(38, 'Eu Fico Nervoso', 'Skylab V', 'funk brasileiro', '00:03:44', '2004-01-01'),
(39, 'Dinheiro', 'Skylab V', 'funk brasileiro', '00:02:55', '2004-01-01'),
(40, 'Semana Passada', 'Skylab V', 'funk brasileiro', '00:03:58', '2004-01-01'),
(41, 'Poesia acústica 3: Capricorniana', 'Poesia Acústica 3: Capricorniana', 'hip-hop', '00:07:21', '2017-11-04'),
(42, 'Poesia acústica 2: Sobre Nós', 'Poesia Acústica 2: Sobre Nós', 'hip-hop', '00:08:02', '2017-08-12'),
(43, 'Poesia acústica 1: Descompasso do Compasso', 'Poesia Acústica 1: Descompasso do Compasso', 'hip-hop', '00:03:39', '2017-05-27'),
(44, 'Poesia acústica 4: Todo Mundo Odeia Acústico', 'Poesia Acústica 4: Todo Mundo Odeia Acústico', 'hip-hop', '00:08:26', '2018-02-26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `musica_artista`
--

CREATE TABLE `musica_artista` (
  `cod_musica_artista` int(11) NOT NULL,
  `cod_musica` int(11) DEFAULT NULL,
  `cod_artista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `musica_artista`
--

INSERT INTO `musica_artista` (`cod_musica_artista`, `cod_musica`, `cod_artista`) VALUES
(1, 1, 3),
(2, 2, 10),
(3, 3, 1),
(4, 4, 4),
(5, 5, 2),
(6, 6, 6),
(7, 7, 8),
(8, 8, 5),
(9, 9, 9),
(10, 10, 7),
(11, 11, 1),
(12, 12, 6),
(13, 13, 10),
(14, 14, 10),
(15, 15, 10),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 8),
(26, 26, 8),
(27, 27, 8),
(28, 28, 8),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 5),
(33, 33, 9),
(34, 34, 9),
(35, 35, 9),
(36, 36, 9),
(37, 37, 7),
(38, 38, 7),
(39, 39, 7),
(40, 40, 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `playlist`
--

CREATE TABLE `playlist` (
  `cod_playlist` int(11) NOT NULL,
  `data_criacao` date DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cod_musica` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `playlist`
--

INSERT INTO `playlist` (`cod_playlist`, `data_criacao`, `nome`, `cod_musica`, `cod_usuario`) VALUES
(1, '2022-09-14', 'Blues', 4, 6),
(2, '2022-07-02', 'Sofrência', 3, 2),
(3, '2022-10-27', 'Relax', 2, 1),
(4, '2022-10-30', 'Rap', 5, 4),
(5, '2022-11-10', 'Breguinha', 9, 9),
(6, '2022-11-18', 'Pineapple', 8, 7),
(7, '2022-12-24', 'Roça', 6, 3),
(8, '2023-01-01', 'Amor', 1, 10),
(9, '2023-02-26', 'Rei do Brasil', 10, 4),
(10, '2023-03-13', 'Pagodinho', 7, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `genero_usuario` varchar(2) DEFAULT NULL,
  `dt_nasc` date DEFAULT NULL,
  `perfil` varchar(50) DEFAULT 'OUVINTE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`cod_usuario`, `nome_usuario`, `email`, `senha`, `genero_usuario`, `dt_nasc`, `perfil`) VALUES
(1, 'Claito de Leles Pereira Junior', 'claito.junior@estudante.iftm.edu.br', 'abracadabra', 'M', '2006-11-16', 'OUVINTE'),
(2, 'Paulo Renato Felix de Oliveira', 'paulo.felix@estudante.iftm.edu.br', 'jumanji', 'M', '2007-01-24', 'OUVINTE'),
(3, 'João Vitor dos Santos', 'jv.santos@estudante.iftm.edu.br', 'futebas', 'M', '2006-06-06', 'OUVINTE'),
(4, 'Emily Samara Moura da Vitoria', 'emily.vitoria@estudante.iftm.edu.br', 'durkhein', 'F', '2006-06-10', 'OUVINTE'),
(5, 'Vinicius Pires Teixeira', 'viniciusPT@gmail.com', 'hamburguer', 'M', '2000-07-24', 'OUVINTE'),
(6, 'Edivaldo Palavrão', 'palavron@hotmail.com', 'maodecoxinha', 'M', '1900-01-01', 'OUVINTE'),
(7, 'Taylor Schmidt', 'ylorta@gmail.com', 'vaiDarPt', 'NB', '2005-03-10', 'OUVINTE'),
(8, 'Zé Problema', 'raiva@gmail.com', 'anticristo', 'M', '2007-08-10', 'OUVINTE'),
(9, 'Juliana da Silva Junior', 'jujuJR@gmail.com', 'urucubaca', 'F', '1998-09-27', 'OUVINTE'),
(10, 'Elizael Batráquio', 'sapoCururu@yahoo.com', 'odeioSAP0S', 'M', '1976-12-01', 'OUVINTE'),
(11, 'Renifer Pereira Santos', 'renifer.santos@estudante.iftm.edu.br', 'renini', 'F', NULL, 'ADMIN');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`cod_album`);

--
-- Índices de tabela `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`cod_artista`);

--
-- Índices de tabela `artista_album`
--
ALTER TABLE `artista_album`
  ADD PRIMARY KEY (`cod_artista_album`),
  ADD KEY `cod_album` (`cod_album`),
  ADD KEY `cod_artista` (`cod_artista`);

--
-- Índices de tabela `hist_avaliacao`
--
ALTER TABLE `hist_avaliacao`
  ADD PRIMARY KEY (`cod_hist_aval`),
  ADD KEY `cod_usuario` (`cod_usuario`),
  ADD KEY `cod_musica` (`cod_musica`);

--
-- Índices de tabela `hist_reproducao`
--
ALTER TABLE `hist_reproducao`
  ADD PRIMARY KEY (`cod_hist_repr`),
  ADD KEY `cod_usuario` (`cod_usuario`),
  ADD KEY `cod_musica` (`cod_musica`);

--
-- Índices de tabela `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`cod_musica`);

--
-- Índices de tabela `musica_artista`
--
ALTER TABLE `musica_artista`
  ADD PRIMARY KEY (`cod_musica_artista`),
  ADD KEY `cod_musica` (`cod_musica`),
  ADD KEY `cod_artista` (`cod_artista`);

--
-- Índices de tabela `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`cod_playlist`),
  ADD KEY `cod_usuario` (`cod_usuario`),
  ADD KEY `cod_musica` (`cod_musica`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `album`
--
ALTER TABLE `album`
  MODIFY `cod_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `artista`
--
ALTER TABLE `artista`
  MODIFY `cod_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `artista_album`
--
ALTER TABLE `artista_album`
  ADD CONSTRAINT `artista_album_ibfk_1` FOREIGN KEY (`cod_album`) REFERENCES `album` (`cod_album`),
  ADD CONSTRAINT `artista_album_ibfk_2` FOREIGN KEY (`cod_artista`) REFERENCES `artista` (`cod_artista`);

--
-- Restrições para tabelas `hist_avaliacao`
--
ALTER TABLE `hist_avaliacao`
  ADD CONSTRAINT `hist_avaliacao_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`),
  ADD CONSTRAINT `hist_avaliacao_ibfk_2` FOREIGN KEY (`cod_musica`) REFERENCES `musica` (`cod_musica`);

--
-- Restrições para tabelas `hist_reproducao`
--
ALTER TABLE `hist_reproducao`
  ADD CONSTRAINT `hist_reproducao_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`),
  ADD CONSTRAINT `hist_reproducao_ibfk_2` FOREIGN KEY (`cod_musica`) REFERENCES `musica` (`cod_musica`);

--
-- Restrições para tabelas `musica_artista`
--
ALTER TABLE `musica_artista`
  ADD CONSTRAINT `musica_artista_ibfk_1` FOREIGN KEY (`cod_musica`) REFERENCES `musica` (`cod_musica`) ON DELETE CASCADE,
  ADD CONSTRAINT `musica_artista_ibfk_2` FOREIGN KEY (`cod_artista`) REFERENCES `artista` (`cod_artista`);

--
-- Restrições para tabelas `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`),
  ADD CONSTRAINT `playlist_ibfk_2` FOREIGN KEY (`cod_musica`) REFERENCES `musica` (`cod_musica`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
