import 'dart:io';
void main () {
  stdout.write('Nhập tên sp ');
  String tenSP = stdin.readLineSync()!;

  stdout.write('Nhập số lượng mua: ');
  int soluongMua = int.tryParse(stdin.readLineSync()!) ?? 0;
  
  stdout.write('Đơn giá: ');
  double donGia = double.tryParse(stdin.readLineSync()!) ?? 0;

  double thanhTien = soluongMua * donGia;

  double giamGia = 0;
  if (thanhTien >= 1000000) {
   giamGia = thanhTien * 0.1;
  } else if (thanhTien >= 500000) {
    giamGia = thanhTien * 0.05;
  }
  double sauGiamGia = thanhTien - giamGia;
  double vat = sauGiamGia * 0.08;
  double tongThanhToan = sauGiamGia + vat;
  print('\n--- HÓA ĐƠN BÁN HÀNG ---');
  print('Tên sản phẩm: $tenSP');
  print('Số lượng: $soluongMua');
  print('Đơn giá: ${donGia.toStringAsFixed(0)} VND');
  print('Thành tiền: ${thanhTien.toStringAsFixed(0)} VND');
  print('Giảm giá: ${giamGia.toStringAsFixed(0)} VND');
  print('VAT (8%): ${vat.toStringAsFixed(0)} VND');
  print('Tổng thanh toán: ${tongThanhToan.toStringAsFixed(0)} VND');
}