-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Tempo de geração: 13/03/2020 às 13:18
-- Versão do servidor: 5.7.17-13-log
-- Versão do PHP: 5.6.40-0+deb8u7
--
-- AUTOR: Vovolinux (suporte@vovolinux.com.br)
-- FONTE: https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Status
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `acervomusical`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `httpResponses`
--

CREATE TABLE `httpResponses` (
  `id` int(11) NOT NULL,
  `classe` varchar(255) NOT NULL,
  `response` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `httpResponses`
--

INSERT INTO `httpResponses` (`id`, `classe`, `response`, `descricao`) VALUES
(100, 'Informação', 'Continue', 'Essa resposta provisória indica que tudo ocorreu bem até agora e que o cliente deve continuar com a requisição ou ignorar se já concluiu o que gostaria.'),
(101, 'Informação', 'Switching Protocol', 'Esse código é enviado em resposta a um cabeçalho de solicitação Upgrade pelo cliente, e indica o protocolo a que o servidor está alternando.'),
(102, 'Informação', 'Processing (WebDAV)', 'Este código indica que o servidor recebeu e está processando a requisição, mas nenhuma resposta está disponível ainda.'),
(103, 'Informação', 'Early Hints', 'Este código tem principalmente o objetivo de ser utilizado com o cabeçalho Link, indicando que o agente deve iniciar a pré-carregar recursos enquanto o servidor prepara uma resposta.'),
(200, 'Sucesso', 'OK', 'Esta requisição foi bem sucedida. O significado do sucesso varia de acordo com o método HTTP:'),
(201, 'Sucesso', 'Created', 'A requisição foi bem sucedida e um novo recurso foi criado como resultado. Esta é uma tipica resposta enviada após uma requisição POST.'),
(202, 'Sucesso', 'Accepted', 'A requisição foi recebida mas nenhuma ação foi tomada sobre ela. Isto é uma requisição não-comprometedora, o que significa que não há nenhuma maneira no HTTP para enviar uma resposta assíncrona indicando o resultado do processamento da solicitação. Isto é'),
(203, 'Sucesso', 'Non-Authoritative Information', 'Esse código de resposta significa que o conjunto de meta-informações retornadas não é o conjunto exato disponível no servidor de origem, mas coletado de uma cópia local ou de terceiros. Exceto essa condição, a resposta de 200 OK deve ser preferida em vez '),
(204, 'Sucesso', 'No Content', 'Não há conteúdo para enviar para esta solicitação, mas os cabeçalhos podem ser úteis. O user-agent pode atualizar seus cabeçalhos em cache para este recurso com os novos.'),
(205, 'Sucesso', 'Reset Content', 'Esta requisição é enviada após realizanda a solicitação para informar ao user agent redefinir a visualização do documento que enviou essa solicitação.'),
(206, 'Sucesso', 'Partial Content', 'Esta resposta é usada por causa do cabeçalho de intervalo enviado pelo cliente para separar o download em vários fluxos.'),
(207, 'Sucesso', 'Multi-Status (WebDAV)', 'Uma resposta Multi-Status transmite informações sobre vários recursos em situações em que vários códigos de status podem ser apropriados.'),
(208, 'Sucesso', 'Multi-Status (WebDAV)', 'Usado dentro de um elemento de resposta <dav:propstat> para evitar enumerar os membros internos de várias ligações à mesma coleção repetidamente.'),
(226, 'Sucesso', 'IM Used (HTTP Delta encoding)', 'O servidor cumpriu uma solicitação GET para o recurso e a resposta é uma representação do resultado de uma ou mais manipulações de instância aplicadas à instância atual.'),
(300, 'Redirecionamento', 'Multiple Choice', 'A requisição tem mais de uma resposta possível. User-agent ou o user deve escolher uma delas. Não há maneira padrão para escolher uma das respostas.'),
(301, 'Redirecionamento', 'Moved Permanently', 'Esse código de resposta significa que a URI do recurso requerido mudou. Provavelmente, a nova URI será especificada na resposta.'),
(302, 'Redirecionamento', 'Found', 'Esse código de resposta significa que a URI do recurso requerido foi mudada temporariamente. Novas mudanças na URI poderão ser feitas no futuro. Portanto, a mesma URI deve ser usada pelo cliente em requisições futuras.'),
(303, 'Redirecionamento', 'See Other', 'O servidor manda essa resposta para instruir ao cliente buscar o recurso requisitado em outra URI com uma requisição GET.'),
(304, 'Redirecionamento', 'Not Modified', 'Essa resposta é usada para questões de cache. Diz ao cliente que a resposta não foi modificada. Portanto, o cliente pode usar a mesma versão em cache da resposta.'),
(305, 'Redirecionamento', 'Use Proxy', 'Foi definida em uma versão anterior da especificação HTTP para indicar que uma resposta deve ser acessada por um proxy. Foi depreciada por questões de segurança em respeito a configuração em banda de um proxy.'),
(306, 'Redirecionamento', 'unused', 'Esse código de resposta não é mais utilizado, encontra-se reservado. Foi usado numa versão anterior da especificação HTTP 1.1.'),
(307, 'Redirecionamento', 'Temporary Redirect', 'O servidor mandou essa resposta direcionando o cliente a buscar o recurso requisitado em outra URI com o mesmo método que foi utilizado na requisição original. Tem a mesma semântica do código 302 Found, com a exceção de que o user-agent não deve mudar o m'),
(308, 'Redirecionamento', 'Permanent Redirect', 'Esse código significa que o recurso agora está permanentemente localizado em outra URI, especificada pelo cabeçalho de resposta Location. Tem a mesma semântica do código de resposta HTTP 301 Moved Permanently  com a exceção de que o user-agent não deve mu'),
(400, 'Erro do cliente', 'Bad Request', 'Essa resposta significa que o servidor não entendeu a requisição pois está com uma sintaxe inválida.'),
(401, 'Erro do cliente', 'Unauthorized', 'Embora o padrão HTTP especifique \'unauthorized\', semanticamente, essa resposta significa \'unauthenticated\'. Ou seja, o cliente deve se autenticar para obter a resposta solicitada.'),
(402, 'Erro do cliente', 'Payment Required', 'Este código de resposta está reservado para uso futuro. O objetivo inicial da criação deste código era usá-lo para sistemas digitais de pagamento porém ele não está sendo usado atualmente.'),
(403, 'Erro do cliente', 'Forbidden', 'O cliente não tem direitos de acesso ao conteúdo portanto o servidor está rejeitando dar a resposta. Diferente do código 401, aqui a identidade do cliente é conhecida.'),
(404, 'Erro do cliente', 'Not Found', 'O servidor não pode encontrar o recurso solicitado. Este código de resposta talvez seja o mais famoso devido à frequência com que acontece na web.'),
(405, 'Erro do cliente', 'Method Not Allowed', 'O método de solicitação é conhecido pelo servidor, mas foi desativado e não pode ser usado. Os dois métodos obrigatórios, GET e HEAD, nunca devem ser desabilitados e não devem retornar este código de erro.'),
(406, 'Erro do cliente', 'Not Acceptable', 'Essa resposta é enviada quando o servidor da Web após realizar a negociação de conteúdo orientada pelo servidor, não encontra nenhum conteúdo seguindo os critérios fornecidos pelo agente do usuário.'),
(407, 'Erro do cliente', 'Proxy Authentication Required', 'Semelhante ao 401 porem é necessário que a autenticação seja feita por um proxy.'),
(408, 'Erro do cliente', 'Request Timeout', 'Esta resposta é enviada por alguns servidores em uma conexão ociosa, mesmo sem qualquer requisição prévia pelo cliente. Ela significa que o servidor gostaria de derrubar esta conexão em desuso. Esta resposta é muito usada já que alguns navegadores, como C'),
(409, 'Erro do cliente', 'Conflict', 'Esta resposta será enviada quando uma requisição conflitar com o estado atual do servidor.'),
(410, 'Erro do cliente', 'Gone', 'Esta resposta será enviada quando o conteúdo requisitado foi permanentemente deletado do servidor, sem nenhum endereço de redirecionamento. É experado que clientes removam seus caches e links para o recurso. A especificação HTTP espera que este código de '),
(411, 'Erro do cliente', 'Length Required', 'O servidor rejeitou a requisição porque o campo Content-Length do cabeçalho não está definido e o servidor o requer.'),
(412, 'Erro do cliente', 'Precondition Failed', 'O cliente indicou nos seus cabeçalhos pré-condições que o servidor não atende.'),
(413, 'Erro do cliente', 'Payload Too Large', 'A entidade requisição é maior do que os limites definidos pelo servidor; o servidor pode fechar a conexão ou retornar um campo de cabeçalho Retry-After.'),
(414, 'Erro do cliente', 'URI Too Long', 'A URI requisitada pelo cliente é maior do que o servidor aceita para interpretar.'),
(415, 'Erro do cliente', 'Unsupported Media Type', 'O formato de mídia dos dados requisitados não é suportado pelo servidor, então o servidor rejeita a requisição.'),
(416, 'Erro do cliente', 'Requested Range Not Satisfiable', 'O trecho especificado pelo campo Range do cabeçalho na requisição não pode ser preenchido; é possível que o trecho esteja fora do tamanho dos dados da URI alvo.'),
(417, 'Erro do cliente', 'Expectation Failed', 'Este código de resposta significa que a expectativa indicada pelo campo Expect do cabeçalho da requisição não pode ser satisfeita pelo servidor.'),
(418, 'Erro do cliente', 'I\'m a teapot', 'O servidor recusa a tentativa de coar café num bule de chá.'),
(421, 'Erro do cliente', 'Misdirected Request', 'A requisição foi direcionada a um servidor inapto a produzir a resposta. Pode ser enviado por um servidor que não está configurado para produzir respostas para a combinação de esquema (\'scheme\') e autoridade inclusas na URI da requisição.'),
(422, 'Erro do cliente', 'Unprocessable Entity (WebDAV)', 'A requisição está bem formada mas inabilitada para ser seguida devido a erros semânticos.'),
(423, 'Erro do cliente', 'Locked (WebDAV)', 'O recurso sendo acessado está travado.'),
(424, 'Erro do cliente', 'Failed Dependency (WebDAV)', 'A requisição falhou devido a falha em requisição prévia.'),
(425, 'Erro do cliente', 'Too Early', 'Indica que o servidor não está disposto a arriscar processar uma requisição que pode ser refeita.'),
(426, 'Erro do cliente', 'Upgrade Required', 'O servidor se recusa a executar a requisição usando o protocolo corrente mas estará pronto a fazê-lo após o cliente atualizar para um protocolo diferente. O servidor envia um cabeçalho Upgrade numa resposta 426 para indicar o(s) protocolo(s) requeridos.'),
(428, 'Erro do cliente', 'Precondition Required', 'O servidor de origem requer que a resposta seja condicional. Feito para prevenir o problema da \'atualização perdida\', onde um cliente pega o estado de um recurso (GET) , modifica-o, e o põe de volta no servidor (PUT), enquanto um terceiro modificou o esta'),
(429, 'Erro do cliente', 'Too Many Requests', 'O usuário enviou muitas requisições num dado tempo (limitação de frequência).'),
(431, 'Erro do cliente', 'Request Header Fields Too Large', 'O servidor não quer processar a requisição porque os campos de cabeçalho são muito grandes. A requisição PODE ser submetida novemente depois de reduzir o tamanho dos campos de cabeçalho.'),
(451, 'Erro do cliente', 'Unavailable For Legal Reasons', 'O usuário requisitou um recurso ilegal, tal como uma página censurada por um governo.'),
(500, 'Erro do servidor', 'Internal Server Error', 'O servidor encontrou uma situação com a qual não sabe lidar.'),
(501, 'Erro do servidor', 'Not Implemented', 'O método da requisição não é suportado pelo servidor e não pode ser manipulado. Os únicos métodos exigidos que servidores suportem (e portanto não devem retornar este código) são GET e HEAD.'),
(502, 'Erro do servidor', 'Bad Gateway', 'Esta resposta de erro significa que o servidor, ao trabalhar como um gateway a fim de obter uma resposta necessária para manipular a requisição, obteve uma resposta inválida.'),
(503, 'Erro do servidor', 'Service Unavailable', 'O servidor não está pronto para manipular a requisição. Causas comuns são um servidor em manutenção ou sobrecarregado. Note que junto a esta resposta, uma página amigável explicando o problema deveria ser enviada. Estas respostas devem ser usadas para con'),
(504, 'Erro do servidor', 'Gateway Timeout', 'Esta resposta de erro é dada quando o servidor está atuando como um gateway e não obtém uma resposta à tempo.'),
(505, 'Erro do servidor', 'HTTP Version Not Supported', 'A versão HTTP usada na requisição não é suportada pelo servidor.'),
(506, 'Erro do servidor', 'Variant Also Negotiates', 'O servidor tem um erro de configuração interno: a negociação transparente de conteúdo para a requisição resulta em uma referência circular.'),
(507, 'Erro do servidor', 'Insufficient Storage', 'O servidor tem um erro interno de configuração: o recurso variante escolhido está configurado para entrar em negociação transparente de conteúdo com ele mesmo, e portanto não é uma ponta válida no processo de negociação.'),
(508, 'Erro do servidor', 'Loop Detected (WebDAV)', 'O servidor detectou um looping infinito ao processar a requisição.'),
(510, 'Erro do servidor', 'Not Extended', 'Exigem-se extenções posteriores à requisição para o servidor atendê-la.'),
(511, 'Erro do servidor', 'Network Authentication Required', 'O código de status 511 indica que o cliente precisa se autenticar para ganhar acesso à rede.');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `httpResponses`
--
ALTER TABLE `httpResponses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `httpResponses`
--
ALTER TABLE `httpResponses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
