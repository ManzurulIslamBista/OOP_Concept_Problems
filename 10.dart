class Student {
  String name;
  double grade;
  List<Courses> course = [];
  Student({required this.name, required this.grade});

  void add_course(Courses cou) {
    course.add(cou);
    print("'${cou.name}' courses added");
  }

  void remove_course(Courses cou) {
    course.removeWhere((cours) => cou.name == cours.name);
  }

  void Show_course_list() {
    course.forEach((element) {
      print("'${element.name}', ");
    });
  }
}

class Courses {
  String name;
  Courses(this.name);
}

void main() {
  Courses cse1 = Courses("CSE101");
  Courses cse2 = Courses("CSE102");

  Student abid = Student(name: "Md. Manzurul Islam", grade: 3.73);
  abid.add_course(cse1);
  abid.add_course(cse2);
  print("Before Remove");
  abid.Show_course_list();
  print("After Remove");
  abid.remove_course(cse1);
  abid.Show_course_list();
}
