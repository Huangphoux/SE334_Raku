Tên biến trong Raku yêu cầu cần phải được đánh dấu ở đầu để phân biệt 3 loại biến: biến lưu trữ một giá trị sử dụng \$, biến mảng chứa nhiều giá trị sử dụng \@, và biến băm chứa tổ hợp khoá và giá trị sử dụng \%.

Dù đã được đánh dấu là biến, ta vẫn cần từ khoá `my` cho việc khai báo biến.

```perl
# Biến chứa một giá trị
my $name = 'John Doe'; my $age = 99;

# Biến chứa nhiều giá trị, biến mảng
my @animals = 'camel','llama','owl'; my @tbl[3;2]; # Mảng đa chiều

# Biến chứa tổ hợp khoá và giá trị, biến băm
my %capitals = 'UK','London','Germany','Berlin';
# Kiểu này dễ nhìn nhầm này biến mảng, nên viết theo cách sau để dễ hiểu hơn
my %capitals = UK => 'London', Germany => 'Berlin';
```

Nếu không khai báo kiểu dữ liệu, biến có thể lưu trữ bất kì kiểu dữ liệu.

```perl
my $var = 'Text'; $var = 123;
```

Ta có thể khai báo kiểu dữ liệu cho biến như sau.

```perl
my Str $var = 'Text';

my Int @array = 1,2,3;

my Str %capitals      = UK => 'London', Germany => 'Berlin';
my Int %country_codes = UK => 44      , Germany => 49;
```

Ta có thể kiểm tra kiểu dữ liệu của biến bằng phươgn thức `.WHAT` như sau.

```perl
my Int $var;
say $var.WHAT;    # (Int)

my $var2;
say $var2.WHAT;   # (Any)

$var2 = 1;
say $var2.WHAT;   # (Int)

$var2 = "Hello";
say $var2.WHAT;   # (Str)

$var2 = True;
say $var2.WHAT;   # (Bool)

$var2 = Nil;
say $var2.WHAT;   # (Any)
```

Nếu muốn ngăn cản việc thay đổi giá trị của biến sau khi được khai báo, ta sử dụng `:=` thay vì `=` như sau.

```perl
my Int $var := 123; $var = 999;
```

Raku sẽ báo lỗi `Cannot assign to an immutable value`.

