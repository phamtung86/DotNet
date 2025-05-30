using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp4.Model;

namespace WpfApp4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public List<Employees> employees = new List<Employees>();

        public MainWindow()
        {
            InitializeComponent();
            dgEmployees.ItemsSource = employees;
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btn_add(object sender, RoutedEventArgs e) 
        {
            if (string.IsNullOrEmpty(txtCode.Text) || string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtSalaryLevel.Text) || dpDob == null)
            {
                MessageBox.Show("Vui lòng không bỏ trống thông tin", "Thông báo", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (float.Parse(txtSalaryLevel.Text) < 0)
            {
                MessageBox.Show("Hệ số lương không hợp lệ", "Thông báo", MessageBoxButton.OK);
            }

            DateTime dob = dpDob.SelectedDate.Value;
            int age = DateTime.Now.Year - dob.Year;
            if (age < 18)
            {
                MessageBox.Show("Tuổi của nhân viên phải từ 18 tuổi trở lên", "Thông báo", MessageBoxButton.OK);
            }
            Employees employee = new (){
                Code = txtCode.Text,
                Name = txtName.Text,
                Dob = dpDob.SelectedDate,
                Gender = rbMale.IsChecked.Value ? "Nam" : "Nữ",
                Department = cbDepartment.Text,
                SalaryLevel = float.Parse(txtSalaryLevel.Text),
                Age = age,
            };
            employees.Add(employee);

            dgEmployees.Items.Refresh();
        }

        public void btn_window2(object sender, RoutedEventArgs e)
        {
            List<Employees> maxOldEmployees = new List<Employees> ();
            int maxOld = employees.Max(e => e.Age );
            foreach(Employees ep in employees)
            {
                if(ep.Age == maxOld)
                {
                    maxOldEmployees.Add(ep);
                }
            }
            
            Window2 w = new Window2(maxOldEmployees);
            w.Show();
        }
    }
}