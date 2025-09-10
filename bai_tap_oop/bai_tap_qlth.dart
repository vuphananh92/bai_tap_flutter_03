// Tạo lớp person làm lớp cha
class Person {
  int id;
  String name;
  int age;
  String gender;

  Person(this.id, this.name, this.age, this.gender);
}

// Tạo lớp Student kế thừa từ Person
class Student extends Person {
  String grade; // lớp học (VD:12A5)
  List<double> scores = []; // danh sách điểm

  Student(int id, String name, int age, String gender, this.grade)
      : super(id, name, age, gender);

  // Thêm điểm
  void addScore(double score) {
    scores.add(score);
  }

  // Tính điểm trung bình
  double get averageScore {
    if (scores.isEmpty) return 0;
    return scores.reduce((a, b) => a + b) / scores.length;
  }

  // Hiển thị thông tin sinh viên
  void displayInfo() {
    print(
        "Student - ID: $id, Name: $name, Age: $age, Gender: $gender, Grade: $grade, AvgScore: ${averageScore.toStringAsFixed(2)}");
  }
}

// Tạo lớp Teacher kế thừa từ Person
class Teacher extends Person {
  String subject;
  double salary;

  Teacher(int id, String name, int age, String gender, this.subject, this.salary)
      : super(id, name, age, gender);

  void displayInfo() {
    print(
        "Teacher - ID: $id, Name: $name, Age: $age, Gender: $gender, Subject: $subject, Salary: $salary");
  }
}

// Tạo lớp Classroom
class Classroom {
  int id;
  String name;
  Teacher? teacher; // có thể null nếu chưa gán
  List<Student> students = [];

  Classroom(this.id, this.name);

  // Thêm học sinh vào lớp
  void addStudent(Student student) {
    students.add(student);
  }

  // Gán giáo viên phụ trách lớp
  void assignTeacher(Teacher t) {
    teacher = t;
  }

  // Hiển thị thông tin lớp học
  void displayClassInfo() {
    print("Classroom ID: $id, Name: $name");
    if (teacher != null) {
      print("Teacher in charge: ${teacher!.name} - Subject: ${teacher!.subject}");
    } else {
      print("No teacher assigned yet.");
    }

    print("Students List:");
    for (var student in students) {
      student.displayInfo();
    }
  }
}
void main() {
  // Tạo giáo viên
  Teacher t1 = Teacher(1, "Phan Anh Vũ", 33, "Male", "Math", 15000000);

  // Tạo sinh viên
  Student s1 = Student(101, "Tran Van B", 16, "Male", "12A5");
  s1.addScore(8.5);
  s1.addScore(9.0);

  Student s2 = Student(102, "Le Thi C", 15, "Female", "12A5");
  s2.addScore(7.0);
  s2.addScore(8.0);

  // Tạo lớp học
  Classroom c1 = Classroom(1001, "12A5");
  c1.assignTeacher(t1);
  c1.addStudent(s1);
  c1.addStudent(s2);

  // Hiển thị thông tin lớp học
  c1.displayClassInfo();
}
