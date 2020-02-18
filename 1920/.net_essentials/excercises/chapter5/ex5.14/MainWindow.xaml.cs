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

namespace ex5._14
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnEnter_Click(object sender, RoutedEventArgs e)
        {
            ConvertNumberToBinary(Convert.ToInt32(txtInput.Text));
        }

        private void ConvertNumberToBinary(int integer)
        {
            StringBuilder output = new StringBuilder();

            if (integer / 128 >= 1)
            {
                output.Append("1");
                integer -= 128;
            } 
            else
            {
                output.Append("0");
            }

            if (integer / 64 >= 1)
            {
                output.Append("1");
                integer -= 64;
            }
            else
            {
                output.Append("0");
            }

            if (integer / 32 >= 1)
            {
                output.Append("1");
                integer -= 32;
            }
            else
            {
                output.Append("0");
            }

            if (integer / 16 >= 1)
            {
                output.Append("1");
                integer -= 16;
            }
            else
            {
                output.Append("0");
            }

            output.Append(" ");

            if (integer / 8 >= 1)
            {
                output.Append("1");
                integer -= 8;
            }
            else
            {
                output.Append("0");
            }

            if (integer / 4 >= 1)
            {
                output.Append("1");
                integer -= 4;
            }
            else
            {
                output.Append("0");
            }

            if (integer / 2 >= 1)
            {
                output.Append("1");
                integer -= 2;
            }
            else
            {
                output.Append("0");
            }

            if (integer / 1 >= 1)
            {
                output.Append("1");
            }
            else
            {
                output.Append("0");
            }

            MessageBox.Show(output.ToString());
        }
    }
}
