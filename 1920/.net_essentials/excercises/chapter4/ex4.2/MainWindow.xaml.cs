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

namespace ex4._2
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

        private void btnCalculate_Click(object sender, RoutedEventArgs e)
        {
            //Variables
            double radius = Convert.ToDouble(txtValue.Text);
            double circumference = 2 * Math.PI * radius;
            double area = Math.PI * Math.Pow(radius, 2);
            double volume = (4 * Math.PI / 3) * Math.Pow(radius, 3);

            //Output
            MessageBox.Show(
                $"Entered radius was: {radius}\n" +
                $"Circumference is: {circumference}\n" +
                $"Area is: {area}\n" +
                $"Volume is: {volume}",
                "Result"
            );
        }
    }
}
