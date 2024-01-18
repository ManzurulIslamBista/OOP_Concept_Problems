class Employee {
  String name;
  String job_title;
  double salary;

  Employee({required this.name, required this.job_title, required this.salary});
}

class CalUpdate {
  List<Employee> emp = [];

  void add_employee(Employee employee) {
    emp.add(employee);
    print("${employee.name} Added");
  }

  void update_salary(String name, double salary) {
    emp.forEach((employee) {
      if (employee.name == name) {
        employee.salary = salary;
      }
    });
  }

  void calculateSalary(String name, double sal) {
    emp.forEach((employee) {
      if (employee.name == name) {
        employee.salary += (sal / 100) * employee.salary;
      }
    });
  }

  void Show_employee_list() {
    emp.forEach((employee) {
      print(
          "Name : '${employee.name}' Salary : ${employee.salary}  Job Title : ${employee.job_title}");
    });
  }
}

void main() {
  Employee employee = Employee(
      name: "Abid", job_title: "Junior Softwer Developer", salary: 20000);
  CalUpdate emp = CalUpdate();
  emp.add_employee(employee);
  emp.Show_employee_list();
  emp.update_salary("Abid", 500000);
  emp.calculateSalary("Abid", 15);
  emp.Show_employee_list();
}
