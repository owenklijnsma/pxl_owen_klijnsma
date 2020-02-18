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

namespace ex3._6
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            //Head
            Ellipse head = new Ellipse();
            head.Width = 200;
            head.Height = 300;
            head.Margin = new Thickness(10, 10, 0, 0);
            head.Stroke = new SolidColorBrush(Colors.Salmon);
            head.Fill = new SolidColorBrush(Colors.LightSalmon);
            canMain.Children.Add(head);

            //Eyes
            Ellipse leftEye = new Ellipse();
            leftEye.Width = 60;
            leftEye.Height = 40;
            leftEye.Margin = new Thickness(40, 100, 0, 0);
            leftEye.Stroke = new SolidColorBrush(Colors.White);
            leftEye.Fill = new SolidColorBrush(Colors.LightBlue);
            canMain.Children.Add(leftEye);

            Ellipse rightEye = new Ellipse();
            rightEye.Width = 60;
            rightEye.Height = 40;
            rightEye.Margin = new Thickness(160, 100, 0, 0);
            rightEye.Stroke = new SolidColorBrush(Colors.White);
            rightEye.Fill = new SolidColorBrush(Colors.LightBlue);
            canMain.Children.Add(rightEye);

            //Mouth
            Rectangle mouth = new Rectangle();
            mouth.Width = 100;
            mouth.Height = 10;
            mouth.Margin = new Thickness(80, 200, 0, 0);
            mouth.Stroke = new SolidColorBrush(Colors.RosyBrown);
            mouth.Fill = new SolidColorBrush(Colors.Black);
            canMain.Children.Add(mouth);
        }
    }
}
