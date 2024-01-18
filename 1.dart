class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void print_details() {
    print("Name : $name Age : $age");
  }
}

void main() {
  Person abid = Person("Md Manzurul Islam", 24);
  Person ome = Person("Md Mohibul Islam", 20);
  abid.print_details();
  ome.print_details();
}
