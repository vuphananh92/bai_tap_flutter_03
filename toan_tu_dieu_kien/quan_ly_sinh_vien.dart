import 'dart:io';

void main() {
  // Nhập thông tin sinh viên
  stdout.write('Nhập họ tên');
  String hoTen = stdin.readLineSync()!; /* Đọc dòng chữ người dùng nhập vào */
  // Nhập số giờ làm việc
  stdout.write('Nhập số giờ làm việc');
  int giolam = int.tryParse(stdin.readLineSync()!) ?? 0;/* Đọc số giờ người dùng nhập vào từ bàn phím */
  // Nhập lương mỗi giờ
  stdout.write('Nhập lương mỗi giờ');
  double luongMoiGio = double.tryParse(stdin.readLineSync()!) ?? 0;

  double tongLuong = giolam * luongMoiGio;
  if (giolam > 40) {
    tongLuong += tongLuong * 0.2;
  }
  double thue = 0;
  if (tongLuong > 10000000) {
    thue = tongLuong * 0.1;
  } else if (tongLuong >= 7000000) {
    thue = tongLuong * 0.5;
  } 
  double luongThucLanh = tongLuong - thue;
  print('Kết quả:');
  print('Họ và tên: $hoTen');
  print('Lương trước thuê: $tongLuong');
  print('Thuế thu nhập: $thue');
  print('Lương thực lãnh: $luongThucLanh');
}

