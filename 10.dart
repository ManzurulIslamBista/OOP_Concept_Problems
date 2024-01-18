class Student {
  String name;
  int grade;
  List<String> courses = [];

  Student(this.name, this.grade);

  void addCourse(String course) {
    if (!courses.contains(course)) {
      courses.add(course);
      print("$name has added the course: $course");
    } else {
      print("$name is already enrolled in the course: $course");
    }
  }

  void removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      print("$name has removed the course: $course");
    } else {
      print("$name is not enrolled in the course: $course");
    }
  }

  void displayDetails() {
    print("\nStudent details:");
    print("Name: $name");
    print("Grade: $grade");
    print("Enrolled Courses: ${courses.isEmpty ? 'None' : courses.join(', ')}");
  }
}

void main() {
  Student student1 = Student("Alice", 10);
  student1.displayDetails();

  student1.addCourse("Math");
  student1.addCourse("Science");
  student1.addCourse("Math");
  student1.removeCourse("English");
  student1.displayDetails();
}
