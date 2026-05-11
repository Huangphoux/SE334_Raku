Raku có cấu trúc vòng lặp và kiểm tra điều kiện như bao ngôn ngữ khác.

```perl
my $age = 19;

if $age > 18 {
  say 'Welcome, adult'
} elseif $age > 10 {
  say 'Welcome, teenager'
} else {
  say 'Welcome, child'
}
```

Ta có thể thay `if not` bằng từ khoá `unless`. `unless` không thể được dùng chung với `else`.

```perl
my $is_earth_round = True;

unless $is_earth_round {
  say 'The earth is round, silly'
}
```

Để kiểm tra nếu biến được gán giá trị, ta sử dụng `with`. `with` cũng có từ khoá `without`, tương tự như `if` có `unless`.

```perl
my Int $var;

with $var { # vì $$var không có giá trị nên bỏ qua
  say 'Hello'
}
```

Trong Raku, câu lệnh `switch` của các ngôn ngữ khác sử dụng từ khoá `given`.

```perl
my $var = 42;

given $var {
    when 0..50 { say 'Less than or equal to 50'}
    when Int { say "is an Int" }
    when 42  { say 42 }
    default  { say "huh?" }
}
```