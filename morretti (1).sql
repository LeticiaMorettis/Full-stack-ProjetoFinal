-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Mar-2023 às 02:19
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `morretti`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(200) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `telefone` int(10) DEFAULT NULL,
  `mensagem` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `depoimentos`
--

CREATE TABLE `depoimentos` (
  `id_depoimentos` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sexo` enum('data:image/png;base64,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','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMQAAAEBCAMAAAAQKvrqAAAAh1BMVEUAAAD///8GBgb39/fV1dXr6+vu7u5GRkb6+vo2Njajo6MmJiYsLCzn5+e1tbUvLy9tbW0dHR3Dw8NcXFx9fX2QkJCpqanMzMzKysqgoKDT09NOTk7d3d2Hh4cPDw+xsbFlZWV1dXUVFRUeHh5gYGA8PDyZmZlqampVVVWTk5NISEi8vLyBgYHePFebAAAKrklEQVR4nN2d6ZqqOBCGgwiCCO47Lrigrd7/9Q24HFmSEGJlYb555k/POU3egSRVlUoVMuTJSf7dzZbwvxjB/8qnbD9st0PfzP7sHt07LkKd3mTktw3DJP3d2hIBYQaDPnpp2x/HI/v98xn6p9v2Gp98qAfCQ1gTVJQbBVbyX065H3rTyxzokdAQ4bSE8NJwfSj/MIB5KCSEv9gQCEjqwDwYCMIcPXo1AZ6Kn3979OMcB4FYRVseglQzw2jb8aitGMKcubwEqXbBDPVRaFjGfBXOA7v6gfAQdt1pUNIBeahrziJrj9xZu7tZyIaw/35FeGnZvyLUWq/DZFsfD6RCrAYwCF8NfX8erWfyIFZraIT003rqsZMDYYO/hay8fTx3hEMsRSK8dWGe4lwQ9k0CQ6L1SBxEIAch+ao6EdNezgERyWJIVit3w2Lp1oYwz/IYkHfuXNrVL6MuhI8xqEWqdz6fKw2rmhALuQhvkDsoxE4FAzquu4AQPxt7fNoeEH0LrwMhdJMmq3VAW0TdMdghrI4ahkTbxFqnhUaYIUJlCCh1fA80d5wVwlfHgHqJs3FE058hLIUMw5bbn6L1mvxBsUHYkre4nFqHPpqj8WHyG4TTr36UQPWGKLhsPZdofzBBjJUyoMMRXaO+6xGXWRYIoGgAv1qH43XWOxGnNgNEWzVDsk8gN0RR9APEUTUD2h7PB7t/dvkhlH9MT+Np0B7c+twQKne5jK6nJZpavBB71cNPNbx10B39kbyjKgj1szrVcH/bhmhDWmOrIBRvER+d+yjcnkhBgwoIhbZrXh1v1dmQRlkBocgPKqvXW+yJxhMdwlY99q9a98mYD6LrqR77V/GGE2LcUj30ry4bonNHhQjVmuB5eWc+iJmk6Dej+GynAffJrhCteSBUOtY49UiuHQ0iEHAq95NIXhENItJobXqKtMbSIK6qB10SId+AAmFJPBJiFCH1jgJBTF1SJ8JOQYEIFEXyacJHASkQo1P1L5Ut/DkF7U3IPGJk1L4uRFcny+mtQ12InYZvAoU1IUZ6WU4vYScFBUJxLByvqAaElcapHqpHjNGwBsRkbu30iRJkhbM88BDP4ZsabnYI4WJPOAjzmZm+jTUJnOUVM0J8Ima6WeJP4cwnDMRdN18oL0xAFgNRvjqglZjehDbhV4Iwe3YZYlb9e5SK6U3o58/lhcmXLUPoaPZlhdntShAaBcLxwpx5lSDuqgdZJUxCYAlCS4MpK8x5URHCVD3GSp2rITTf6VKVN4ochD8Yqh4hgyIqhPYL01ul4FMWQkn6MYdKceUshN7Wa0bFaMEHwlrIuJwCJR8LobvVV9DBxEBov00X1XFKEKufLl4q0bgEobvhitMgD2FqGMJn0CMHMVc9HE7FWYiGrUxfdTMQGmXS1NTfPwjdoxs0XT4QOsa+mdV77t1Ify+IrjQgiKRdJBWlIIG4omNTTHCCVgbykl0jbIJDR5SXQkwSv1S/XJQaSmfELZkadpO8iaJO6QWL5zKl5lopiLbpTbzn9t3kPQ/tEbqmELHqgfDriNLBp4Hm5lpQKELpBYmZxOIJArRA6b2nVqNfRCcxANNladPkF+Gn/kQaQ27wlr14BQp0P6WjavWJdqi78/6rOvY3eNZUx2jS5DDmR1YOojkR8Zz8PEQzg0/dPIShX041g/oFCGMRx5vGBZbDAkSileox1damDNHAyHIJwmmg8XEtQjTSuRsUIJq54/l5CK6Kr8oV5iC6qofDpa2ThXBUD4dPm9ycaOaLQGYOQsuk6kq180tsAzeJT/r7P4hGbhK9ggGoQbUXDvWcHERDPdTb/+BNZKIdqZoaPptlIZrnS7zUzkI0dMP+y+8TjYx3ePklltXsaN0GgT4e4LIAwZYVG8SOTp+eX4BgqgY7Np65Uq4mYXTXKEKwFFbYGfMUfnXRI+NuU4aotAFd9K3l/0x+PCk+YJpgIOixzG1rfvx2grHXy0crUn1KZpYhaKZsZzLyR9+MNcMyjJF7eURq3ZDi6vSmwH9Sx7bRNYNd/i7MuLNTXq0RB2HM+6QvxB30W7lqMuHF3ASqv6cFDsKwL6U/uJ56j/mqPRpsr9k/2d0Zhm9HA6ULVYSFMAyzg9z91PPWrzhU9EmRD91czv8qTpYqe+cOlYbSDwQIw0frfbQ+93vn6C/4V4/SOefvQpvJP93p6txXu+/ZBAijjaLkW1vkb7RdXq8uj2ts9kO102JOgjA6qHcv3PE8IVzTmkfvMApiNFCXo3MnQoTxNHfpxZwhD1MLx9ntJqFp3FzTuKs6CydDJFuZszyiWdt37MVumgzwD1NvzG4baVbqcp146IONIn9kQYZ4/n++R9c0uy7ZIQJsybT3D/224RjmRdGr8OkQz3Fall3VMMhOYZyTmgwR4hLLJUfN3H6AQig6Z/JhIZTkpL7u5DQbwnWaDzF81yuAg5B/0uR+ai7AQUhfnb531OAgJBdSumaqRsBByCsMsHVP3ZwlBwexhx7rcB09No/o1OkdWmnTAM+9TuLZIrRKNhAcBLCXGmfrKTgmtZUaHAQowqBGh0dACNCrbjW7mYNBQLZHwNU1kwIBeOZHbkgkGgLuCLl+02wwCDDHrlW/WTYUBNy85miVDQUBVm+i5sIECgFVFoqrizwQBNjXtFIIAeVg12/wDQZhgh22cLWMh4EA2yPwxarlQIBdvmBsJS0EAmx95Xw+CATUWVFtowkQAsy7Zu6vDg8BZoRzWE1gEGAHj5xrEwQEnA1Ob70sEgIw8EdqHCgcArBwCZftBwEB6VkT29UJhgBtnsi5Xf8KAZsQzLvA/gIR7EERcHVgRUPMwdNSHtUPBYWwNgKahOCyLsRBOGJOIjAFnsVBrAR1Lee1/nggRmIQ8N0xBEGIu6EgD8IRl37Jv9fVhRB4uhhUPx0GQuQ9tm7140EgTEEL01P89l8tCF8kA2fwry6E4LwHGbZTKDw9TjyEhMwNbJc3QAhTRqol/xrLBGFJuWHAG/9jg/Dl9L/in9kMENL6GgsM2ZjSsvIFBs/kZR4Te8L/DCGzSQvfYVc1hNRr2rxudgWEL5PhUzcBGkJyKj5nsIAOIb0osYAjYGk7xFdctgcVQkWN66hW9l81hJpOLb361iztOo5QR46i2istBUJdA9p9zU+KDKGyQk+rXkyTDKG2iGwt54IIobr/0rmGYU6EUF4ms4W5YlkTQnlPCg9tmbdvEoTyCmib3acqBzeEXOsVK3PHHNkkQGjQpHxq7FkTffEQyjbrjFqO9S4axAkh7EyrjmZGhKIfIJRP61ReajQw2VFYCE16h96NG9sHhYXQpD9LP92tWDxWLIQulcPi5LtmOXvBQejTzmtqeOV+s2wQWqxNLy0XLOcWOAidOjMfWA7zcBByIvnMqs4hwkDoVnS1elJgIHT6mlJNy0OshHA0+5oYLkCWITSs9Fl146sMoYEVXlKFBVWGUO5c40QP0ZYgNPDpcKJmQ5UgdG0xSKMoQWjbeIlCUYTQx/griWyUFyFUB/5oIs7uIoTWnX5IK20RQssF9p8IFkgBQhPvmih8sLwAofOUeOrEAKF/xf0O5q5IAUKXEAFFXjlYXoBQPUImlZzuPITu8/qtmUWDaErrgykNQv95/dbYJEPsFY+tRdP2qwPqZ7+o/wAzDZpKltMvoAAAAABJRU5ErkJggg==') NOT NULL,
  `depoimento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `joias`
--

CREATE TABLE `joias` (
  `id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `joias`
--

INSERT INTO `joias` (`id`, `cover`, `nome`, `descricao`) VALUES
(2, 'https://static.relojoariaeoticasuica.com.br/public/relojoariaeoticasuica/imagens/produtos/anel-semi-joia-dourado-coracao-com-pedras-11341.png', 'Anel Cluster Vine ', 'Descrição e Detalhes\nCom uma intensidade somente comparável ao céu estrelado, a Tiffany Victoria™ celebra o brilho ardente dos diamantes Tiffany. O tema orgânico de videira deste anel cluster complementa a beleza dos diamantes com lapidação mista.\n• Platina com diamantes em lapidação brilhante e marquise\n• Peso total em quilates: 1,19\n• Número do produto:66886433'),
(4, 'https://shannajoias.com.br/wp-content/uploads/2022/03/9306D7D2-8602-4AD5-9786-B84F39B49482.jpeg', 'Anel Bypass Olive Leaf', 'Descrição e Detalhes\r\nUma bela homenagem ao ramo de oliveira, símbolo de paz e abundância.\r\n• Ouro rosa 18k\r\n• Designs originais protegidos por direitos autorais de\r\nPaloma Picasso\r\n• Número do produto:67544579'),
(5, 'https://http2.mlstatic.com/D_NQ_NP_801021-MLB43822324742_102020-O.webp', 'Anel de banda estreita com ninho de diamante', 'Descrição e detalhes\nCom detalhes em forma de V, este anel de diamante é o complemento perfeito para todos os estilos de anéis de noivado Tiffany. Use um anel de diamante como anel de casamento ou dois empilhados juntos para um visual moderno.\n• Ouro rosa 18k com diamantes brilhantes redondos\n• 3 mm de largura\n• Peso total em quilates 0,13\n• Número do produto: 62984503'),
(6, 'https://cdn.dooca.store/3126/products/brincos-rommanel-grandes-corrente-cristal-gota-verde-pendurado-banhado-a-ouro-18k-526418.jpg?v=1636910593', 'Brincos Moretti Lock\r\n', 'Descrição e detalhes:\r\nSem regras. Todos bem-vindos. Inspirada no poder da união e inclusão, Tiffany Lock é uma declaração ousada e visual sobre os laços pessoais que nos tornam quem somos. Projetado para ser usado por todos os gêneros, os designs da Tiffany Lock são inspirados na funcionalidade de um cadeado, um motivo importante dos arquivos da Tiffany. Estes brincos de gota apresentam um fecho de mola oculto para um visual ininterrupto. Eles são habilmente trabalhados em ouro rosa e branco 18k com diamantes cravejados à mão.\r\n• Ouro rosa e branco 18k com diamantes brilhantes redondos\r\n• Peso total em quilates 0,32\r\n• Tamanho do motivo, extra grande\r\n• Número do produto: 71855201'),
(7, 'https://m.media-amazon.com/images/I/61I0LvMviPS._AC_SX500_.jpg', 'Brincos Diamonds by the Yard®', 'Descrição e detalhes\r\nOs diamantes redondos Tiffany captam a luz e a fazem dançar. Brincos em ouro 18k com seis diamantes redondos brilhantes. Peso total em quilates 0,30. Desenhos originais protegidos por direitos autorais de Elsa Peretti.\r\nNúmero do produto: 60141896'),
(8, 'https://images.tcdn.com.br/img/img_prod/680812/conjunto_colar_e_brinco_pedra_verde_folheado_a_ouro_18k_36111345_1_a792ed3a8e177271c421f18c1dccfa42.jpg', 'Brincos de barra', 'Descrição e detalhes\r\nEssas barras ousadas são uma versão moderna do brinco de gota. Tão multifacetada quanto icônica, a coleção Tiffany T é um lembrete tangível das conexões que sentimos, mas nem sempre podemos ver. Combine estes elegantes brincos de barra com um colar Tiffany para emoldurar o rosto sem esforço.\r\nouro 18k\r\n• Número do produto: 62271841'),
(9, 'https://d289ufozrugj3t.cloudfront.net/Custom/Content/Products/98/76/987622_brinco-ouro-18k-argola-redonda-ccoracao-100-gramas-1808_m1_637054417111703311.jpg', 'Brincos de argola\r\nOuro rosa cravejado com diamantes, médio', 'Mais Informações\r\nSimples e moderna, a coleção Tiffany Metro brilha como as\r\nluzes da cidade em uma noite escura. Diamantes deslumbrantes são cravados no formato clássico desses brincos de argola.\r\n• Ouro rosa 18k cravejado com diamantes brilhantes redondos\r\n• tamanho médio\r\n• total de 0,50 quilates\r\n• Número do produto: 67025105'),
(10, 'https://img.irroba.com.br/fit-in/600x600/filters:fill(fff):quality(95)/fabricad/catalog/produtos/brincos/101545/brinco-argola-infinito.jpg', 'Brincos de videira', 'Descrição e detalhes\r\nInspirados no mundo natural, os designs Tiffany Victoria capturam o movimento fluido de flores, trepadeiras e folhas com uma mistura de diamantes habilmente lapidados. Estes brincos longos de videira são feitos de ouro rosa 18k que apresenta um contraste de alto polimento e acabamentos jateados. Diamantes redondos brilhantes e marquise totalizando quase um quilate realçam a luz e acentuam o motivo da videira. Quando muitos diamantes nunca são suficientes, Tiffany Victoria é a melhor maneira de brilhar. Para obter o máximo impacto, use estes brincos compridos sozinhos.\r\n• Ouro rosa 18k com brilhantes redondos e diamantes marquise\r\n• 2,91\" de comprimento\r\n• Peso total em quilates 0,99\r\n• Número do produto: 69523498'),
(11, 'https://images.tcdn.com.br/img/img_prod/463054/pulseira_de_berloques_prata_925_coracao_ouro_dourado_5082_1_637902f8a4ebdb5301778df335c4b644.jpg', 'pulseira\r\nOuro branco cravejado com pavê de diamantes', 'Mais Informações\r\nSem regras. Todos bem-vindos. Inspirados pelo poder da solidariedade e da inclusão, os Tiffany Locks são uma expressão ousada e visual de nosso vínculo uns com os outros. O Tiffany Lock Bangle apresenta um mecanismo de trava inovador, um motivo de chave dos Arquivos da Tiffany, e foi projetado para ser usado por homens e mulheres. Diamantes cravejados à mão em ouro branco 18K criam uma beleza deslumbrante com contraste nítido.\r\n\r\nPara colocar a pulseira Tiffany Lock:\r\n1. Localize o pequeno entalhe na pulseira.\r\n2. Puxe lentamente a parte ranhurada para fora usando as duas mãos.\r\n3. Coloque a ranhura da pulseira na parte interna do pulso.Usando a tensão do pulso, puxe suavemente a parte ranhurada para fora.\r\n4. Gire a pulseira para que as extremidades se encontrem até que ela se encaixe no lugar com um clique.\r\n\r\nConjunto de ouro branco 18K com diamantes brilhantes redondos\r\nTotal de 4,99 quilates\r\ntamanho médio\r\nCircunferência do pulso até 15,9 cm\r\nConsulte o guia de tamanhos abaixo para ver os tamanhos recomendados de pulseira Tiffany lock.\r\nfechamento oculto\r\nAssista ao vídeo abaixo para ver como usar o Tiffany Rock Bracelet.\r\nNúmero do produto: 70424940'),
(12, 'https://images.tcdn.com.br/img/img_prod/463054/pulseira_prata_925_coracao_zirconias_1594_1_20190827185551.jpg', 'Pulseira em ouro rosa', 'Descrição e detalhes\r\nSem regras. Todos bem-vindos. Inspirada no poder da união e inclusão, Tiffany Lock é uma declaração ousada e visual sobre os laços pessoais que nos tornam quem somos. Projetada para ser usada por todos os gêneros, a pulseira Tiffany Lock apresenta um fecho inovador que lembra a funcionalidade de um cadeado, um tema importante dos arquivos da Tiffany. Este estilo é habilmente trabalhado em ouro rosa 18k.\r\n\r\nComo abrir e fechar uma pulseira Tiffany Lock:\r\n1. Para abrir, localize o entalhe indicado por um pequeno entalhe.\r\n2. Coloque uma mão em cada lado do entalhe e puxe suavemente para fora.\r\n3. Coloque a pulseira com o entalhe sob o pulso. Usando seu pulso para tensão, puxe cuidadosamente para fora do entalhe.\r\n4. Para fechar, gire as duas extremidades juntas e solte para encaixar no lugar.\r\n\r\nouro rosa 18k\r\nTamanho médio\r\nAdapta-se a pulsos de até 6,25 ”\r\nPara o tamanho recomendado de pulseira Tiffany Lock, consulte nosso guia de tamanhos abaixo.\r\nFechamento oculto\r\nPara obter instruções sobre como abrir e fechar a pulseira Tiffany Lock, assista ao nosso vídeo abaixo.\r\nNúmero do produto: 70185504'),
(13, 'https://m.media-amazon.com/images/I/51yc7XgxBML._AC_SY500_.jpg', 'Pulseira\r\nem ouro branco com meia pavê de diamantes', 'Sem regras. Todos bem-vindos. Inspirada no poder da união e inclusão, Tiffany Lock é uma declaração ousada e visual sobre os laços pessoais que nos tornam quem somos. Projetada para ser usada por todos os gêneros, a pulseira Tiffany Lock apresenta um fecho inovador que lembra a funcionalidade de um cadeado, um tema importante dos arquivos da Tiffany. Este estilo é habilmente trabalhado em ouro rosa e branco 18k com diamantes cravejados à mão para um contraste impressionante.\r\n\r\nComo abrir e fechar uma pulseira Tiffany Lock:\r\n1. Para abrir, localize o entalhe indicado por um pequeno entalhe.\r\n2. Coloque uma mão em cada lado do entalhe e puxe suavemente para fora.\r\n3. Coloque a pulseira com o entalhe sob o pulso. Usando o pulso como tensão, puxe cuidadosamente para fora do entalhe.\r\n4. Para fechar, gire as duas extremidades juntas e solte para encaixar no lugar.\r\n\r\nOuro rosa e branco 18k com diamantes brilhantes redondos\r\nPeso total em quilates 1,20\r\nTamanho médio\r\nAdapta-se a pulsos de até 6,25 ”\r\nPara o tamanho recomendado de pulseira Tiffany Lock, consulte nosso guia de tamanhos abaixo\r\nFechamento oculto\r\nPara obter instruções sobre como abrir e fechar a pulseira Tiffany Lock, assista ao nosso vídeo abaixo.\r\nNúmero do produto: 70158345'),
(15, 'https://cdn.entrypoint.directory/assets/56526/produtos/1416/188614.jpg', 'Pulseira\r\nem ouro rosa e branco com meia pavê de diamantes', 'Descrição e detalhes\r\nSem regras. Todos bem-vindos. Inspirada no poder da união e inclusão, Tiffany Lock é uma declaração ousada e visual sobre os laços pessoais que nos tornam quem somos. Projetada para ser usada por todos os gêneros, a pulseira Tiffany Lock apresenta um fecho inovador que lembra a funcionalidade de um cadeado, um tema importante dos arquivos da Tiffany. Este estilo é habilmente trabalhado em ouro rosa e branco 18k com diamantes cravejados à mão para um contraste impressionante.\r\n\r\nComo abrir e fechar uma pulseira Tiffany Lock:\r\n1. Para abrir, localize o entalhe indicado por um pequeno entalhe.\r\n2. Coloque uma mão em cada lado do entalhe e puxe suavemente para fora.\r\n3. Coloque a pulseira com o entalhe sob o pulso. Usando o pulso como tensão, puxe cuidadosamente para fora do entalhe.\r\n4. Para fechar, gire as duas extremidades juntas e solte para encaixar no lugar.\r\n\r\nOuro rosa e branco 18k com diamantes brilhantes redondos\r\nPeso total em quilates 1,20\r\nTamanho médio\r\nAdapta-se a pulsos de até 6,25 ”\r\nPara o tamanho recomendado de pulseira Tiffany Lock, consulte nosso guia de tamanhos abaixo\r\nFechamento oculto\r\nPara obter instruções sobre como abrir e fechar a pulseira Tiffany Lock, assista ao nosso vídeo abaixo.\r\nNúmero do produto: 70158345'),
(16, 'https://static.netshoes.com.br/produtos/relogio-pulso-q&q-japan-analogico-romano-masculino/64/PCC-0082-064/PCC-0082-064_zoom1.jpg?ts=1588701592&ims=544x', 'Relógio Makers quadrado 16 mm', 'Descrição e detalhes do produto: \r\nA coleção de relógios Tiffany 1837 Makers combina design\r\nartístico, materiais luxuosos e artesanato para criar peças distintas de obras-primas contemporâneas. A mais recente iteração do relógio Tiffany 1837 Makers, este relógio quadrado de 16 mm apresenta um impressionante mostrador em madrepérola branca, diamantes redondos\r\ncom lapidação brilhante e índices de diamante.\r\n• Ouro rosa 18K com mostrador em madrepérola branca, diamantes redondos lapidação brilhante e índices de\r\ndiamante\r\n• caixa de 16 x 16 mm\r\n• 0,45 quilates de peso total\r\n• movimento de quartzo\r\n• Resistente à água até 50 metros / 160 pés / 5 ATM\r\n• feito na Suiça\r\n• Número do produto: 69345824\r\n'),
(17, 'https://www.bigeletro.com/image/cache/catalog/data/imagens/Orient/MBSS1369/MBSS1369-min-728x800.jpg', ' Relógio Atlas® de 37,5 mm de 2 ponteiros', '\r\nDescrição e detalhes \r\nRelógio em aço inoxidável. Mostrador preto azul.\r\nCaixa de 37,5 mm. Movimento de quartzo.\r\nResistente à água até 50 metros/160 pés/5 ATM.\r\nFeito na Suiça.\r\nNúmero do produto: 60166377\r\n'),
(18, 'https://a-static.mlcdn.com.br/1500x1500/relogio-feminino-technos-de-pulso-boutique-2035mtp-1x/oclockcomercial2/12284104844/2a220ff4dfa73f51b762efb323da9447.jpg', 'Moretti 1837 Relógio quadrado Makers 27 mm', 'Descrição e detalhes:\r\nRelógio em aço inoxidável. O mostrador branco apresenta algarismos dourados. Caixa de 27 x 27 mm. Em uma pulseira de couro de bezerro preto. Movimento mecânico de corda automática. Reserva de marcha 38 horas. Resistente à água até 50 metros/160 pés/5 ATM. Feito na Suiça.\r\n• Número do produto: 67460596\r\n');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD PRIMARY KEY (`id_depoimentos`);

--
-- Índices para tabela `joias`
--
ALTER TABLE `joias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  MODIFY `id_depoimentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `joias`
--
ALTER TABLE `joias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
