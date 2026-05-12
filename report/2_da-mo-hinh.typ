Raku hỗ trợ nhiều mô hình lập trình, cho phép lập trình viên lựa chọn phong cách phù hợp.

== Lập trình Functional

Raku coi hàm là first-class citizen, có thể gán cho biến, truyền như tham số.

#raw(lang: "raku", block: true, `
# Hàm là first-class
my &square = sub ($x) { $x ** 2 };
say square(5);  # 25

# Pipeline với toán tử ==>
(1..10).map(*²).grep(* % 2 == 0).say;

# Lazy evaluation
my @infinite = 1, 2, 4, 8 ... *;  # Vô hạn
my @first-ten = @infinite[^10];   # Chỉ lấy 10 phần tử
`)

== Lập trình Hướng đối tượng

Mọi thứ trong Raku đều là object, hỗ trợ lớp, kế thừa, và role (mixin).

#raw(lang: "raku", block: true, `
class SinhVien {
    has $.ten;
    has $.mssv;
    
    method gioi-thieu {
        say "Xin chào, tôi là $.ten, mã số $.mssv";
    }
}

# Tạo đối tượng
my $hs = SinhVien.new(ten => "Nguyễn Văn A", mssv => "12345");
$hs.gioi-thieu();

# Role (mixin) - khắc phục hạn chế đa kế thừa
role NguoiDung {
    method dang-nhap { say "Đăng nhập thành công" }
}

class SinhVienOnline is SinhVien does NguoiDung { }
`)

== Lập trình Procedural

Raku vẫn hỗ trợ lập trình thủ tục truyền thống.

#raw(lang: "raku", block: true, `
# Vòng lặp truyền thống
for 1..10 -> $i {
    say "Lần thứ $i";
}

# Subroutine
sub tinh-tong($a, $b) {
    return $a + $b;
}

# Biến điều kiện
my $x = 10;
if $x > 5 {
    say "$x lớn hơn 5";
} else {
    say "$x nhỏ hơn hoặc bằng 5";
}
`)

== So sánh các mô hình

| Mô hình | Ưu điểm | Nhược điểm |
|---------|---------|-------------|
| Functional | Code ngắn gọn, dễ kiểm thử | Khó học cho người mới |
| OOP | Tổ chức code rõ ràng | Có thể phức tạp |
| Procedural | Đơn giản, dễ hiểu | Khó quản lý khi lớn |

Raku cho phép kết hợp linh hoạt ba mô hình, tận dụng ưu điểm từng loại.