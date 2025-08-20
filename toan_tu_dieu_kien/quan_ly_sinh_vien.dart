import 'dart:io';

void main() {
  // Nhập thông tin sinh viên
  stdout.write('Nhập họ tên');
  String hoTen = stdin.readLineSync()!; /* Đọc dòng chữ người dùng nhập vào */
  // Nhập số giờ làm việc
  stdout.write('Nhập số giờ làm việc');
  int giolam = int.tryParse(stdin.readLineSync()!) ?? 0;/* Đọc số giờ người dùng nhập vào từ bàn phím */
}
