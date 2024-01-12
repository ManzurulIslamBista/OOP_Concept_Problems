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
  abid.print_details();
}
