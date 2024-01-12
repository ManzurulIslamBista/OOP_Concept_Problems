class Student {
  String name;
  int studentId;

  Student({required this.name, required this.studentId});

  @override
  String toString() {
    return 'Student Name: $name, ID: $studentId';
  }
}

class Teacher {
  String name;
  int teacherId;

  Teacher({required this.name, required this.teacherId});

  @override
  String toString() {
    return 'Teacher Name: $name, ID: $teacherId';
  }
}

class School {
  List<Student> students = [];
  List<Teacher> teachers = [];
  List<String> classes = [];

  void addStudent(Student student) {
    students.add(student);
    print('Student added to the school: ${student.toString()}');
  }

  void removeStudent(int studentId) {
    students.removeWhere((element) => element.studentId == studentId);
  }

  void addTeacher(Teacher teacher) {
    teachers.add(teacher);
    print('Teacher added to the school: ${teacher.toString()}');
  }

  void removeTeacher(int teacherId) {
    teachers.removeWhere((element) => element.teacherId == teacherId);
  }

  void createClass(String className) {
    classes.add(className);
    print('Class created: $className');
  }

  void displaySchoolInfo() {
    print('School Information:');
    print('Students:');
    students.forEach((student) => print(student));
    print('Teachers:');
    teachers.forEach((teacher) => print(teacher));
    print('Classes: $classes');
  }
}

void main() {
  var student1 = Student(name: 'abid', studentId: 1);
  var student2 = Student(name: 'ome', studentId: 2);
  var teacher1 = Teacher(name: 'Mrs. Amena', teacherId: 101);
  var teacher2 = Teacher(name: 'Mr. Manzurul', teacherId: 102);

  var school = School();

  //add
  school.addStudent(student1);
  school.addStudent(student2);
  school.addTeacher(teacher1);
  school.addTeacher(teacher2);

  school.displaySchoolInfo();

  //remove
  school.removeStudent(2);
  school.removeTeacher(101);

  school.createClass('Mathematics');

  school.displaySchoolInfo();
}
