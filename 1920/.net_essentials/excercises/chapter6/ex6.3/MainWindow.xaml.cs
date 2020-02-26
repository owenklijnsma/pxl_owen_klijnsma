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

namespace ex6._3
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

        public int totalNumbers = 0;
        private void btnGenerate_Click(object sender, RoutedEventArgs e)
        {
            lblNumber.Content = generateNumber(200, 400);
            totalNumbers += 1;
            lblSum.Content = (Convert.ToInt32(lblSum.Content) + Convert.ToInt32(lblNumber.Content)).ToString();
            lblAverage.Content = Convert.ToInt32(lblSum.Content) / totalNumbers;
        }

        private int generateNumber(int min, int max)
        {
            Random random = new Random();
            return random.Next(min, max);
        }
    }
}
