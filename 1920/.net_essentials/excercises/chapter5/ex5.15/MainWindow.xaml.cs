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

namespace ex5._15
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
            ConvertSecondsToHoursMinutesSeconds(Convert.ToInt32(txtInput.Text));
        }

        public void ConvertSecondsToHoursMinutesSeconds(int inputSeconds)
        {
            int totalSeconds = inputSeconds;
            int hours = 0;
            int minutes = 0;
            int seconds = 0;

            while(totalSeconds > 0)
            {
                if(totalSeconds / 3600 > 0)
                {
                    hours += 1;
                    totalSeconds -= 3600;
                }
                else if(totalSeconds / 60 > 0)
                {
                    minutes += 1;
                    totalSeconds -= 60;
                } 
                else
                {
                    seconds += totalSeconds;
                    totalSeconds -= totalSeconds;
                }
            }

            MessageBox.Show(inputSeconds.ToString() + " seconds is " + hours.ToString() + " hours, " + minutes.ToString() + " minutes and " + seconds.ToString() + " seconds.");
        }
    }
}
