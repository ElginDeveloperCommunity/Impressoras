using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace ImpressoraEtiquetas
{
    class E1Etiqueta
    {
        // declaração dos métodos da dll
        public const string PATH = "./E1_Etiqueta01.dll";

        // Configurações de Sistema
        // Parâmetros são gravados na EPROM, logo serão preservados mesmo com um desligamento ou reinicialização da impressora.

        /// <summary>
        /// Define a altura do gap. 
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="altura">Parâmetro que define a altura do gap, em *milímetros*, valores válidos entre 0 e 99.</param>
        /// <returns>Função bem sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetAlturaGap(int tipo, string modelo, string conexao, int param, int altura);

        /// <summary>
        /// Define o tipo de transferência.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="transferencia">Parâmetro que define o tipo de transferência. (0 - Térmica direta, 1 - Transferência térmica)</param>
        /// <returns>Função bem sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetTipoTransferencia(int tipo, string modelo, string conexao, int param, int transferencia);

        /// <summary>
        /// Define o baudrate, o comprimento dos dados, a paridade e o númerod e stop bits.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="baudrate">Parâmetro que define o baudrate. (0-9600, 1-600, 2-2400, 3-19200, 4-4800, 5-38400, 6-1200, 7-9600, 8-57600, 9-115200)</param>
        /// <param name="dataLenght">Parâmetro que define o comprimento dos dados. (7 - 7-bit, 8 - 8-bit)</param>
        /// <param name="parity">Parâmetro que define a paridade. (0 - None, 1 - Even, 2 - Odd)</param>
        /// <param name="stopBit">Parâmetro que define o número de stop bits. (1 - 1 stop bit, 2 - 2 stop bits)</param>
        /// <returns>Função bem sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetBaudrate(int tipo, string modelo, string conexao, int param, int baudrate, int dataLenght, int parity, int stopBit);

        /// <summary>
        /// Define o symbol das fontes Smooth ASD. - OBS. As impressoras não suportam esta função.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="symbol">Parâmetro que define o symbol das fontes Smooth ASD. (0 - USASCII, 1 - Reino Unido, 2 - Espanhol, 3 - Sueco, 4 - Francês, 5 - Alemão, 6 - Italiano, 7 - Dinamarquês/Norueguês.</param>
        /// <returns>Função bem sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetSymbolASD(int tipo, string modelo, string conexao, int param, int symbol);

        // NÍVEL DE SISTEMA
        // Comandos de Nível de Sistema fornecem funções para configurar as propriedades relacionadas à impressão e ao ambiente das etiquetas. 
        // Estes parâmetros não são gravados na EPROM, logo, serão perdidos sempre que a impressora for desligada ou reiniciada.

        /// <summary>
        /// Define o sistema de unidades adotado para a configuração dos campos da etiqueta e de algumas propriedades. Se essa função não for usada, assume-se valor 0.
        /// </summary>
        /// <param name="medida">Define se o sistema de unidades utilizado será o métrico (0) ou imperial (1). Se métrico, as medidas estarão em décimos de milímetros, se imperial, os valores serão em centésimos de polegada. Esta função afeta outras propriedades como back-feed, offset de coluna e offset de linha.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetMedidas(int medida);

        /// <summary>
        /// Define a distância em que a etiqueta será deslocada da impressora após a impressão. OBS: L42PRO não suporta esta função.
        /// </summary>
        /// <param name="backfeed">Parâmetro que define o back-feed de impressão. Números válidos entre (220 - 999)</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetBackfeed(int backfeed);

        /// <summary>
        /// Define a posição inicial de impressão. L42PRO não suporta esta função. OBS: Use essa função somente se realmente necessário.
        /// </summary>
        /// <param name="printStPos">Parâmetro do tipo numérico que define a posição inicial de impressão. O valor padrão 220 configura a posição inicial exatamente abaixo da linha TPH (cabeça de impressão). Valores válidos entre (0 - 9999).</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetPrintStPos(int printStPos);

        /// <summary>
        /// Define se o sensor a ser usado na impressão será o trasmissivo ou o reflexivo. Se a função não for usada assume-se transmissivo.
        /// </summary>
        /// <param name="sensor">Parâmetro que define o sensor a ser utilizado na impressão.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetSensor(int sensor);

        /// <summary>
        /// Ativa ou desativa o modo de impressão continuo e configura a distância de papel a ser impresso.
        /// </summary>
        /// <param name="modoContinuo">Parâmetro que ativa e define a distância de impressão do modo contínuo. Se usado as funções SetSensor e SetPrintStPos serão ignoradads. Valores válidos entre (0 - 9999)</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetModoContinuo(int modoContinuo);

        /// <summary>
        /// Define o comprimento (altura) máximo da etiqueta.
        /// </summary>
        /// <param name="lenght">Define o comprimento da etiqueta. Valores válidos entre (0, 9999).</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetLength(int lenght);

        // FORMATAÇÃO DE LABEL
        // Comandos de Formatação de Label fornecem funções para configurar as propriedades de formatação da etiqueta, tais como margens (offsets), calor e velocidade de impressão.

        /// <summary>
        /// Define a margem inferior da impressão (a distância, a partir da margem inferior da etiqueta, em que o eixo y de impressão será posicionado). Se esta função não for usada, assume-se valor 0.
        /// </summary>
        /// <param name="offsetLinha">Define a posição do eixo y no plano da etiqueta, de baixo para cima, valores válidos entre (0 - 9999)</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetOffsetLinha(int offsetLinha);

        /// <summary>
        /// Define a margem esquerda da impressão (a distância, a partir da margem esquerda da etiqueta, em que o eixo x de impressão será posicionado). Se esta função não for usada, assume-se o valor 0.
        /// </summary>
        /// <param name="offsetColuna">Define a posição do eixo x no plano da etiqueta, da esquerda para a direita. Valores válidos entre (0, 9999).</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetOffsetColuna(int offsetColuna);

        /// <summary>
        /// Define a velocidade de impressão.
        /// </summary>
        /// <param name="velImpressao">valores válidos entre (0 - 11). O 0 corresponde à 1,0"/seg, a cada número que se incrementa acresenta-se 0,5"/seg de velocidade. Velocidade máxima de 7.0"/seg.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetVelImpressao(int velImpressao);

        /// <summary>
        /// Define a largura e a altura do pixel que será usado na etiqueta. Se esta função não for usada, assume-se 1 para ambos os parâmetros.
        /// </summary>
        /// <param name="largura">Valores válidos: 1 ou 2.</param>
        /// <param name="altura">Valores válidos: 1, 2 ou 3</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetTamPixel(int largura, int altura);

        /// <summary>
        /// Define o calor de impressão, isto é, o quão forte será a cor da impressão.
        /// </summary>
        /// <param name="calor">valores válidos entre 0 e 20, se esta função não for usada, assume-se 9.</param>
        /// <returns></returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetCalor(int calor);

        /// <summary>
        /// Define quantas vezes a etiqueta será impressa.
        /// </summary>
        /// <param name="qtde">Valores válidos entre 0 e 9999.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetQtde(int qtde);

        /// <summary>
        /// Define se o número zero (0) deve ser "cortado" ou não, para distingui-lo da letra O.
        /// </summary>
        /// <param name="cortarZero">Valores válidos: 0 - Não, 1 - Sim</param>
        /// <returns></returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetCortarZero(int cortarZero);

        /// <summary>
        /// Define o modo lógico de impressão dos campos.
        /// </summary>
        /// <param name="logicImgMode">define se a impressora irá operar no modo lógico XOR (eXclusive OR) ou no modo lógico OR. (1 - XOR, 2 - OR).</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetLogicImgMode(int logicImgMode);

        /// <summary>
        /// Define se os textos serão espelhados ou não durante a impressão.
        /// </summary>
        /// <param name="mirror">Define se o texto será espelhado na impressão. (0 - Não Espelhar, 1 - Espelhar)</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int SetMirror(int mirror);

        // CAMPOS DA ETIQUETA
        // Fornece funções para criar os campos da etiqueta (Image Editing Commands)

        /// <summary>
        /// Gera uma linha na etiqueta.
        /// </summary>
        /// <param name="coordY">Parâmetro do tipo numérico que define a coordenada Y de impressão</param>
        /// <param name="coordX">Parâmetro do tipo numérico que define a coordenada X de impressão, isto é, a quantos centésimos de centímetro (ou de polegada) do eixo x (no plano da etiqueta) a linha será impressa.</param>
        /// <param name="comprimento">Parâmetro do tipo numérico que define o comprimento da linha, em centésimos de centímetro (ou de polegada).</param>
        /// <param name="altura">Parâmetro do tipo numérico que define a altura da linha, em centésimos de centímetro (ou de polegada).</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarLinha(int coordY, int coordX, int comprimento, int altura);

        /// <summary>
        /// A função bem-sucedida deve retornar 0.
        /// </summary>
        /// <param name="coordY">Parâmetro do tipo numérico que define a coordenada Y de impressão, isto é, a quantos centésimos de centímetro (ou de polegada) do eixo y (no plano da etiqueta) o box será impresso.</param>
        /// <param name="coordX">Parâmetro do tipo numérico que define a coordenada X de impressão, isto é, a quantos centésimos de centímetro (ou de polegada) do eixo x (no plano da etiqueta) o box será impresso.</param>
        /// <param name="comprimento">Parâmetro do tipo numérico que define o comprimento do box, em centésimos de centímetro (ou de polegada).</param>
        /// <param name="altura">Parâmetro do tipo numérico que define a altura do box, em centésimos de centímetro (ou de polegada).param>
        /// <param name="grosBordasH">Parâmetro do tipo numérico que define a grossura das bordas horizontais (superior e inferior) do box, em centésimos de centímetro (ou de polegada).</param>
        /// <param name="grosBordasV">Parâmetro do tipo numérico que define a grossura das bordas verticais (laterais) do box, em centésimos de centímetro (ou de polegada).</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarBox(int coordY, int coordX, int comprimento, int altura, int grosBordasH, int grosBordasV);

        /// <summary>
        /// Gera uma imagem na etiqueta. OBS: A impressora L42PRO não suporta esta função(somente as duas imagens pré-carregadas na memória Flash, ELGINPB e COYOTE, podem ser impressas).
        /// </summary>
        /// <param name="coordY">y</param>
        /// <param name="coordX">x</param>
        /// <param name="nome">Parâmetro do tipo caractere que define o nome da imagem a ser impressa. OBS: Antes de imprimir uma imagem, é necessário que ela esteja carregada na memória da impressora. Para carregar imagens, use a função EnviaImagem.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarImagem(int coordY, int coordX, string nome);

        // TEXTO
        // Fornece funções para gerar textos na etiqueta.

        /// <summary>
        /// Gera um texto na etiqueta usando as fontes alfanuméricas.
        /// </summary>
        /// <param name="rotacao">Parâmetro do tipo numérico que define a rotação do texto em relação ao plano da etiqueta. (1 - Retrato, 2 - Paisagem reversa, 3 - Retrato reverso, 4 - Paisagem)</param>
        /// <param name="fonte">Parâmetro do tipo numérico que define a fonte do texto.<seealso cref="https://elgindevelopercommunity.github.io/group__ge30.html#details"/></param>
        /// <param name="multH">Parâmetro do tipo numérico que define a multiplicação horizontal (largura) da fonte. ( valores válidos entre 0 e 24)</param>
        /// <param name="multV">Parâmetro do tipo numérico que define a multiplicação vertical (altura) da fonte. ( valores válidos entre 0 e 24)</param>
        /// <param name="coordY">y</param>
        /// <param name="coordX">x</param>
        /// <param name="texto">Parâmetro do tipo caractere que define o texto a ser impresso.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarTexto(int rotacao, int fonte, int multH, int multV, int coordY, int coordX, string texto);

        /// <summary>
        /// Gera um texto na etiqueta usando as fontes Smooth ASD.
        /// </summary>
        /// <param name="rotacao">1	Retrato, 2	Paisagem reversa, 3	Retrato reverso, 4	Paisagem</param>
        /// <param name="tamanho">Parâmetro do tipo numérico que define o tamanho da fonte. Valores de 0 a 6</param>
        /// <param name="multH">Números entre 0 e 24 (0, 1, 2, ..., 24).</param>
        /// <param name="multV">Números entre 0 e 24 (0, 1, 2, ..., 24).</param>
        /// <param name="coordY">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="coordX">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="texto">Parâmetro do tipo caractere que define o texto a ser impresso.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarTextoASD(int rotacao, int tamanho, int multH, int multV, int coordY, int coordX, string texto);

        /// <summary>
        /// Gera um texto na etiqueta usando as fontes Courier.
        /// </summary>
        /// <param name="rotacao">1	Retrato, 2	Paisagem reversa, 3	Retrato reverso, 4	Paisagem</param>
        /// <param name="symbol">Parâmetro do tipo numérico que define o symbol set.<seealso cref="https://elgindevelopercommunity.github.io/group__ge30.html#details"/></param>
        /// <param name="multH">Números entre 0 e 24 (0, 1, 2, ..., 24).</param>
        /// <param name="multV">Números entre 0 e 24 (0, 1, 2, ..., 24).</param>
        /// <param name="coordY">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="coordX">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="texto">Parâmetro do tipo caractere que define o texto a ser impresso.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarTextoCourier(int rotacao, int symbol, int multH, int multV, int coordY, int coordX, string texto);

        // CÓDIGO DE BARRAS
        // Fornece funções para gerar códigos de barras (uma e duas dimensões) na etiqueta.

        /// <summary>
        /// Gera um código de barras de uma dimensão na etiqueta.
        /// </summary>
        /// <param name="rotacao">1	Retrato, 2	Paisagem reversa, 3	Retrato reverso, 4	Paisagem</param>
        /// <param name="tipo">Parâmetro do tipo numérico que define o tipo do código de barras.<seealso cref="https://elgindevelopercommunity.github.io/group__ge30.html#details"/></param>
        /// <param name="largBarrasL">Parâmetro do tipo numérico que define a largura das barras largas. Números entre 0 e 24 (0, 1, 2, ..., 24).</param>
        /// <param name="largBarrasE">- Parâmetro do tipo numérico que define a largura das barras espessas. Números entre 0 e 24 (0, 1, 2, ..., 24).</param>
        /// <param name="altura">Parâmetro do tipo numérico que define a altura das barras, em centésimos de centímetro (ou de polegada).</param>
        /// <param name="coordY">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="coordX">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="codigo">- Parâmetro do tipo caractere que define o código a ser impresso.</param>
        /// <param name="exibirStr">0 - Não, 1 - Sim</param>
        /// <returns></returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarBarCode1D(int rotacao, int tipo, int largBarrasL, int largBarrasE, int altura, int coordY, int coordX, string codigo, int exibirStr);

        /// <summary>
        /// Gera um QR Code na etiqueta; modo automático.
        /// </summary>
        /// <param name="rotacao">1	Retrato, 2	Paisagem reversa, 3	Retrato reverso, 4	Paisagem</param>
        /// <param name="mult">Parâmetro do tipo numérico que define a dimensão do QR Code impresso. Números entre 1 e 35 (1, 2, 3, ..., 35).</param>
        /// <param name="coordY">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="coordX">Números entre 0 e 9999 (0, 1, 2, ..., 9999).</param>
        /// <param name="codigo">Parâmetro do tipo caractere que define o código a ser impresso. Dados numéricos, dados alfanuméricos, dados byte de 8-bit e Kanji.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int GerarQRCodeAuto(int rotacao, int mult, int coordY, int coordX, string codigo);

        // =========== MAIS FUNÇÕES DE CÓDIGOS DE BARRA DISPONÍVEIS ======

        // FUNÇÕES DA DLL E1 EM LINGUAGEM A

        /// <summary>
        /// Comando para limpar a etiqueta, isto é, remover todos os campos criados.
        /// </summary>
        /// <param name="keepProps">- Parâmetro do tipo numérico que define se as propriedades configuradas nos módulos Nível de Sistema e Formatação de Label devem ser mantidas ou não. ( 0 - não, 1 - sim</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int Limpa(int keepProps);

        /// <summary>
        /// Abre conexão com a impressora, imprime a etiqueta, depois de configurá-la com as funções dos módulos Nível de Sistema, Formatação de Label e Campos da Etiqueta, e fecha a conexão.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int Imprime(int tipo, string modelo, string conexao, int param);

        /// <summary>
        /// Aplica um reset na impressora.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int Reset(int tipo, string modelo, string conexao, int param);

        /// <summary>
        /// Retorna uma sequência de 8 bytes que descreve o status geral da impressora.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <returns>A função bem-sucedida deve retornar XXXXXXXX, em que cada X, que será Y ou N, representa o estado da impressora em determinado critério, conforme relação na documentação: <seealso cref="https://elgindevelopercommunity.github.io/group___m0.html"/></returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern IntPtr Status(int tipo, string modelo, string conexao, int param);

        // função StatusEPL

        /// <summary>
        /// Produz um efeito similar ao de pressionar o botão Feed da impressora. Se a impressora não estiver em modo contínuo, avança o papel até encontrar um gap(avança uma etiqueta em branco). Se a impressora estiver em modo contínuo, avança o papel até uma certa distância.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int Feed(int tipo, string modelo, string conexao, int param);

        /// <summary>
        /// Faz uma impressão de teste.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int Teste(int tipo, string modelo, string conexao, int param);

        /// <summary>
        /// Exibe o status da memória da impressora: as imagens, as fontes ou os labels carregados e o espaço disponível em cada módulo (RAM e Flash). OBS: a impressora L42PRO suporta parcialmente esta função.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="tipoDados">Qual tipo de armazenamento na memória a impressora irá buscar e retornar. (0 - Fontes, 1 - Imagens, 2 - Labels).</param>
        /// <returns>Uma cadeia de caracteres que mostra os dados carregados nos dois módulos da memória (conforme o tipo especificado) seguido do espaço disponível em cada módulo.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern IntPtr MemoryStatus(int tipo, string modelo, string conexao, int param, int tipoDados);

        /// <summary>
        /// Apaga o conteúdo carregado nos dois módulos da impressora (RAM e Flash). OBS: A impressora L42PRO não suporta esta função.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int LimpaMemoria(int tipo, string modelo, string conexao, int param);

        /// <summary>
        /// Apaga o conteúdo carregado em um módulo específico da impressora (RAM ou Flash). OBS: A impressora L42PRO suporta parcialmente esta função(os dados não são apagados imediatamente, mas somente depois de uma reinicialização).        
        /// /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="modulo">- Parâmetro do tipo numérico que define o módulo que será apagado. 0 - RAM, 1 - Flash</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int LimpaModulo(int tipo, string modelo, string conexao, int param, int modulo);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="modulo">- Parâmetro do tipo numérico que define o módulo que será apagado. 0 - RAM, 1 - Flash</param>
        /// <param name="formato">- Parâmetro do tipo numérico que define o formato da imagem que será enviada.<seealso cref="https://elgindevelopercommunity.github.io/group___m0.html"/></param>
        /// <param name="nome">Parâmetro do tipo caractere que define um nome para a imagem. Esse é o nome que identificará, na memória, a imagem enviada.</param>
        /// <param name="arquivo">- Parâmetro do tipo caractere que define a imagem que será carregada.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int EnviaImagem(int tipo, string modelo, string conexao, int param, int modulo, int formato, string nome, string arquivo);

        /// <summary>
        /// Exclui uma imagem enviada à memória da impressora.
        /// </summary>
        /// <param name="tipo">Parâmetro que define o tipo de comunicação que será estabelecido: 1 - USB, 2 - RS232, 3 - TCP/IP</param>
        /// <param name="modelo">Parâmetro que especifica o modelo para conexão. (L42, L42PRO, TT042-50)</param>
        /// <param name="conexao">Parâmtro que define detalhes de conexão. (USB - USB, RS232 - COM2, TCP/IP - 192.168.0.20)</param>
        /// <param name="param">Parâmetro auxiliar para a conexão com a impressora, para especificar *baudrate* ou *porta de comunicação TCP/IP</param>
        /// <param name="modulo">- Parâmetro do tipo numérico que define o módulo que será apagado. 0 - RAM, 1 - Flash</param>
        /// <param name="nome">Parâmetro do tipo caractere que define um nome para a imagem. Esse é o nome que identificará, na memória, a imagem enviada.</param>
        /// <returns>A função bem-sucedida deve retornar 0.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern int ExcluiImagem(int tipo, string modelo, string conexao, int param, int modulo, string nome);

        /// <summary>
        /// Retorna a versão da DLL E1_Etiqueta.
        /// </summary>
        /// <returns>O retorno da função é do tipo caractere.</returns>
        [DllImport(PATH, CallingConvention = CallingConvention.StdCall)]
        internal static extern IntPtr GetVersaoDLL();
    }

}
