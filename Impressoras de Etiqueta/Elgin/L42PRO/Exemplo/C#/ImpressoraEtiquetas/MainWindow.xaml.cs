using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Runtime.InteropServices;

namespace ImpressoraEtiquetas
{
    /// <summary>
    /// Interação lógica para MainWindow.xam
    /// </summary>
    public partial class MainWindow : Window
    {
        // CONSTANTES DE ROTAÇÃO
        const int RETRATO = 1;
        const int PAISAGEM_REVERSA = 2;
        const int RETRATO_REVERSO = 3;
        const int PAISAGEM = 4;
        // CONSTANTES DE FONTES
        const int ASCII_CHARACTER_SET = 0;
        // tem várias outras fontes, consultar a documentação.
        //CONSTANTES PARA CÓDIGO DE BARRAS
        const int EAN8 = 8;

        // valores comuns às funções
        int x_inferior = 260;
        int x_superior = 100;
        int y_meioesqo = 250 + 210;
        int y_esquerdo = 250;
        int y_ext_esquerdo = 30;
        int comprimento_longo = 500;



        public MainWindow()
        {
            InitializeComponent();
        }


        private int GetTipo()
        {
            if (ConexaoUSB.IsChecked == true) return 1;
            else if (ConexaoRS232.IsChecked == true) return 2;
            else return 3;
        }
        private string GetModelo()
        {
            if (ModeloPro.IsChecked == true) return "L42PRO";
            else { return "L42"; }
        }
        private string GetConexao()
        {
            return txtBoxConexao.Text;
        }
        private int GetParam()
        {
            return int.Parse(txtBoxParam.Text);
        }

        private void GetVersao_Click(object sender, RoutedEventArgs e)
        {            
            try
            {
                IntPtr versaoDll = E1Etiqueta.GetVersaoDLL();
                txtBoxRet.Text = Marshal.PtrToStringAnsi(versaoDll);
            }
            catch (Exception err)
            {
                txtBoxRet.Text = err.ToString();
            }
        }

        private void BtnMostraParametros_Click(object sender, RoutedEventArgs e)
        {
            txtBoxRet.Text = $"{GetTipo()} - {GetModelo()} - {GetConexao()} - {GetParam()}";
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            int retDLL = E1Etiqueta.Teste(GetTipo(), GetModelo(), GetConexao(), GetParam());
            string ret = retDLL.ToString(); // Marshal.PtrToStringAnsi(retDLL);
            txtBoxRet.Text = ret;
        }

        private void BtnImprimir_Click(object sender, RoutedEventArgs e)
        {
            int ret = E1Etiqueta.Imprime(GetTipo(), GetModelo(), GetConexao(), GetParam());
            txtBoxRet.Text = ret.ToString();
        }

        private void BtnStatus_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                IntPtr ret = E1Etiqueta.Status(GetTipo(), GetModelo(), GetConexao(), GetParam());
                txtBoxRet.Text = Marshal.PtrToStringAnsi(ret);
            }
            catch (Exception err)
            {
                txtBoxRet.Text = err.ToString();
            }
        }

        private void BtnFeed_Click(object sender, RoutedEventArgs e)
        {
            int ret = E1Etiqueta.Feed(GetTipo(), GetModelo(), GetConexao(), GetParam());
            txtBoxRet.Text = ret.ToString();
        }

        private void BtnTexto_Click(object sender, RoutedEventArgs e)
        {
            int[] ret = new int[8];
            
            string produto = txtBox_Produto.Text;
            string varejo = txtBox_varejo.Text;
            string atacado = txtBox_atacado.Text;
            string unidade = txtBox_unidades.Text;
            string varejoConfig = "PR.VAREJO-R$";
            string atacadoConfig = "PR.ATACADO-R$";
            string unidadeConfig1 = "A PARTIR";
            string unidadeConfig2 = "  UNIDADE";

            ret[0] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 3, 3, y_ext_esquerdo + 20, x_superior - 60, produto);
            ret[1] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 4, 5, y_ext_esquerdo + 20, x_inferior, varejo);
            ret[2] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 4, 5, y_meioesqo + 60, x_inferior - 20, atacado);
            ret[3] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 3, 3, y_esquerdo + 50, x_inferior - 50, unidade);

            ret[4] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 2, 2, y_ext_esquerdo, x_superior + 50, varejoConfig);
            ret[5] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 2, 2, y_meioesqo + 20, x_superior + 50, atacadoConfig);
            ret[6] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 2, 2, y_esquerdo + 20, x_superior + 50, unidadeConfig1);
            ret[7] = E1Etiqueta.GerarTexto(PAISAGEM, ASCII_CHARACTER_SET, 2, 2, y_esquerdo + 20, x_inferior - 20, unidadeConfig2);

            txtBoxRet.Text = string.Join(", ", ret);
        }

        private void BtnCodigos_Click(object sender, RoutedEventArgs e)
        {

            string codigo1D = "4012345";
            int ret1D = E1Etiqueta.GerarBarCode1D(PAISAGEM, EAN8, 2, 2, 60, y_esquerdo + comprimento_longo + 30, x_inferior - 20, codigo1D, 1);

            txtBoxRet.Text = "Retorno Codigo 1D: " + ret1D.ToString();
        }

        private void BtnLayout_Click(object sender, RoutedEventArgs e)
        {
            int espaço = y_esquerdo - y_ext_esquerdo;
            int grossura = 10;
            int comprimento_curto = x_inferior - x_superior;

            int retLinhaProduto = E1Etiqueta.GerarLinha(y_ext_esquerdo, x_superior - 50, 10, 2 * espaço + comprimento_longo);

            int retBox = E1Etiqueta.GerarBox(y_esquerdo, x_superior, comprimento_curto, comprimento_longo, grossura, grossura);
            int retLin = E1Etiqueta.GerarLinha(y_meioesqo, x_superior + grossura, comprimento_curto - (2*grossura), y_esquerdo + comprimento_longo - y_meioesqo - grossura);
            txtBoxRet.Text = retLinhaProduto.ToString() + ", " + retBox.ToString() + ", " + retLin.ToString();
        }
    }
}
