#import "@preview/diatypst:0.8.0": *

#show: slides.with(
  title: "Ngôn ngữ lập trình Raku",
  subtitle: "Các phương pháp lập trình - SE334.Q21",
  date: datetime.today().display(),
  authors: "23521224 Trương Hoàng Phúc
23520535 Nguyễn Văn Hoàng",

  ratio: 4 / 3,
  layout: "small",
  title-color: blue,
  toc: true,
  theme: "full",
  count: "number",
)

#show raw: set text(font: "JetBrains Mono")


= Giới thiệu
#image("../report/Camelia.svg.png", height: 50%)

- Raku, tên cũ: Perl 6
- Ngôn ngữ lập trình thuộc họ ngôn ngữ Perl
- Hỗ trợ đa kiểu lập trình: OOP, kiểu hàm, tường thuật, theo thủ tục.
- Biến có kiểu động.

= Bản địa hoá & Quốc tế hoá
- Hỗ trợ Unicode cho tên biến
- Các từ khoá của cú pháp có thể dịch sang bất kì ngôn ngữ
- Code dịch vẫn thực thi bình thường

```perl
biến $số = hỏi "nhập số: ";
nói "Bạn đã nhập số {$số}.";

nếu $số <= 10 {
    nói "Số này bé hơn hoặc bằng 10.";
} hoặc {
    nói "Số này lớn hơn 10.";
}
```

= Biến
- `$` = một giá trị: `my $age = 99;`
- `@` = mảng: `my @animals = 'camel', 'llama', 'owl'`
- `%` = băm: `my %capitals = UK => 'London', Germany => 'Berlin'`
- Khai báo: `my Int $var = 123`
- Kiểm tra kiểu: `.WHAT` method
- Bất biến: `:=` thay vì `=`

= Vòng lặp & Điều kiện
- `if`/`elsif`/`else`
- `unless` thay vì `if not`
- `with`: kiểm tra giá trị
- `without` thay vì `with not`
- `given`/`when`/`default`: cú pháp switch
- Range: `when 0..50`


= Nhập xuất dữ liệu
- `say`: xuất + xuống dòng
- `print`: xuất
- `get`: nhập
- `prompt`: xuất + nhập

= Hàm
- Khai báo: `sub name() { }`
- `multi` thay vì `sub` để nạp chồng hàm
- Tham số mặc định: `$x = "default"`
- Tham số tuỳ chọn: `$x?`
- Kiểu trả về: `sub foo() --> Int`

= Lập trình bằng hàm
- Sử dụng hàm như biến: `sub foo(&func) { }`
- Hàm vô danh: `-> $x { $x ** 2 }`
- Chuỗi hàm: `@array.unique.sort.reverse`
- Toán tử nối tiếp: `@array ==> unique() ==> sort() ==> my @result`

= OOP: Lớp & Thuộc tính
- `class Name { }`
- `has $attribute` (public)
- `has $!private` (private)
- `has $.public` (getter)
- `has $.attr is rw` (writable)

= OOP: Kế thừa
- Đơn kế thừa: `class Child is Parent`
- Đa kế thừa: `class Multi is Parent1 is Parent2`
- Role: `class Impl does Role1 does Role2`
- Role giúp phát hiện xung đột nạp chồng hàm tốt hơn

#pagebreak()

#align(center + horizon)[
  #text(size: 28pt, weight: "bold")[
    Cảm ơn\
    vì đã mua sự chú ý!
  ]

]
