Ta định nghĩa hàm (chương trình con) bằng từ khoá `sub`.

```perl
sub alien-greeting { # hàm này không cần dữ liệu đầu vào
  say "Hello earthlings";
}

sub say-hello (Str $name) {
    say "Hello " ~ $name ~ "!!!!"
}

multi greet($name) { # sử dụng `multi` cho hàm có thể được nạp chồng
    say "Good morning $name";
}

multi greet($name, $title) { 
    say "Good morning $title $name";
}

sub say-hello($name?) { # không truyền dữ liệu cũng được
  with $name { say "Hello " ~ $name }
  else { say "Hello Human" }
}

sub say-hello($name="Matt") { # dữ liệu mặc định nếu không truyền
  say "Hello " ~ $name;
}

sub squared ($x --> Int) { # sử dụng `-->` để giới hạn kiểu dữ liệu trả về 
  return $x ** 2; # bỏ `return` sẽ tự động trả kết quả của dòng lệnh cuối cùng
}
```