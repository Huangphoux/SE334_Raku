Ta có thể truyền hàm vào đối số, trả kết quả là hàm, hoặc gán giá trị của biến là hàm trong Raku.

```perl
my @array = <1 2 3 4 5>;

sub squared($x) { $x ** 2 }

say map(&squared,@array); # đối số là hàm thì cần thêm `&` vào tên hàm
```

ta sử dụng hàm vô danh khi ta không muốn đặt tên riêng cho hàm đó, để giảm trường hợp bị đụng độ tên với các hàm khác.

```perl
my @array = <1 2 3 4 5>; say map(-> $x {$x ** 2}, @array);

my $squared = -> $x { $x ** 2 }; say $squared(9);
```

Thay vì truyền dữ liệu vào đối số và phải suy ra kết quả từ trong ra ngoài, ta có thể gọi các hàm theo thứ từ từ trái sang phải, giúp dễ đọc hơn.

```perl
my @array = <7 8 9 0 1 2 4 3 5 6 7 8 9>;

my @final-array = reverse(sort(unique(@array))); # khó đọc, nhiều ngoặc, thứ tự áp dụng đi từ trong ra ngoài

my @final-array = @array.unique.sort.reverse; # dễ đọc, không ngoặc, thứ tự áp dụng đi từ trái sang phải
```

Nếu mà phải áp dụng nhiều hàm hơn nữa, ta có thể sử dụng toán tử `==>` hoặc `<==` để liệt kê các hàm được áp dụng thành từng dòng riêng.

```perl

my @array = <7 8 9 0 1 2 4 3 5 6 7 8 9>;

# từ trên xuống, đi từ dữ liệu gốc và gán kết quả vào biến khác ở dòng cuối cùng
@array ==> unique()
       ==> sort()
       ==> reverse()
       ==> my @final-array;

# từ dưới lên, theo cú pháp gán vào biến
my @final-array-v2 <== reverse()
                   <== sort()
                   <== unique()
                   <== @array;
```

