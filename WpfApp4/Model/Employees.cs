using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp4.Model
{
    public class Employees
    {
        private float salaryLevel;
        public String Code {  get; set; }

        public String Name { get; set; }

        public DateTime? Dob { get; set; }

        public String Gender {  get; set; }

        public String Department {  get; set; }

        public float SalaryLevel {  get; set; }

        public int Age {  get; set; }
    }
}
