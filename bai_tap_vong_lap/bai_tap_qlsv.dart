import 'dart:io';
// Tạo một class Student để lưu thông tin sinh viên
class Student {
  String ten;
  double toan;
  double ly;
  double hoa;
// Hàm khởi tạo
  Student(this.ten, this.toan, this.ly, this.hoa);
// Phương thức tính điểm trung bình
  double diemTB() {
    return (toan + ly + hoa) / 3;
  }
// Phương thức xếp loại
  String xepLoai() {
    double tb = diemTB();
    if (tb >= 9) {
      return "Xuat sac";
    } else if (tb >= 7) {
      return "Gioi";
    } else if (tb >= 5) {
      return "Kha";
    } else {
      return "Kem";
    }
  }
// Phương thức hiển thị thông tin sinh viên
  void hienThi() {
    print("Ten: $ten");
    print("Diem TB: ${diemTB().toStringAsFixed(2)}");
    print("Xep Loai: ${xepLoai()}");
  }
}
// Hàm main
// Nhập thông tin sinh viên từ bàn phím
void main() {
  List<Student> students = [];
  while (true) {
    stdout.write('Nhập tên sinh viên (gõ exit để dừng): ');
    String ten = stdin.readLineSync()!;
    if (ten.toLowerCase() == "exit") break; // nếu gõ exit thì dừng
    stdout.write('Nhập điểm Toán: ');
    double toan = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
    stdout.write('Nhập điểm Lý: ');
    double ly = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
    stdout.write('Nhập điểm Hóa: ');
    double hoa = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

    Student student = Student(ten, toan, ly, hoa);
    students.add(student);
    student.hienThi();
    print("---------");
  }

  // Gọi hiển thị danh sách
  hienThiDanhSach(students);
  // Gọi tìm sinh viên điểm cao nhất
  timMax(students);
  
}

void timMax(List<Student> students) {
  if (students.isEmpty) {
    print("Danh SV cao nhất: Danh sách rỗng!");
    return;
  }

  Student maxSV = students[0];
  for (var sv in students) {
    if (sv.diemTB() > maxSV.diemTB()) {
      maxSV = sv;
    }
  }

  print("Sinh viên có ĐTB cao nhất:");
  maxSV.hienThi();

}

void hienThiDanhSach(List<Student> students) {
  if (students.isEmpty) {
    print("Danh sách trống!");
  } else {
    print("===== DANH SÁCH SINH VIÊN =====");
    for (var sv in students) {
      sv.hienThi();
      print("---------");
    }
  }
}
