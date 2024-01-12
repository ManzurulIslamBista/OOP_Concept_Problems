class Employee {
  String name;
  double salary;
  DateTime hiredate;

  Employee(this.name, this.salary, this.hiredate);

  int calculate_service_days(DateTime today) {
    return today.difference(hiredate).inDays;
  }
}

void main() {
  DateTime today = DateTime.now();
  Employee employee = Employee("Abid", 2000000, DateTime.parse("2023-10-01"));

  int serviceDays = employee.calculate_service_days(today);

  print('Service time: $serviceDays days');
}
