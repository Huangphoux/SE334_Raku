```perl
class Human {
  has $name; # thuộc tính public
  has $!age; # thuộc tính/phương thức private cần có thêm dấu `!`
  has $.sex; # tạo getter cho thuộc tính bằng cách thêm dấu `.`
  has $.nationality is rw; # thuộc tính có thể được chỉnh sửa ngoài phạm vi của lớp

  method new ($name,$age,$sex,$nationality) { # định nghĩa hàm khởi tạo của lớp
    self.bless(:$name,:$age,:$sex,:$nationality);
    Human.counter++;
  }

  has $.eligible;
  method assess-eligibility { # định nghĩa phương thức của lớp
      if self.age < 21 {
        $!eligible = 'No' # gọi thuộc tính trực tiếp
      } else {
        self.eligible = 'Yes' # gọi getter của thuộc tính
      }
  }

  my $.counter = 0; # thuộc tính của lớp, không phải của đối tượng

  method introduce-yourself {
    say 'Hi I am a human being, my name is ' ~ self.name;
  }
}

my $john = Human.new(name => 'John', age => 23, sex => 'M', nationality => 'American');

class Employee is Human { # kế thừa
  has $.company;
  has $.salary;

  method introduce-yourself {
    say 'Hi I am a employee, my name is ' ~ self.name ~ ' and I work at: ' ~ self.company;
  }
}
```

Khác với các ngôn ngữ OOP cổ điển, một lớp trong Raku có thể kế thừa từ nhiều lớp khác, không chỉ kế thừa từ một lớp.

```perl
class bar-chart {
  has Int @.bar-values;
  method plot {
    say @.bar-values;
  }
}

class line-chart {
  has Int @.line-values;
  method plot {
    say @.line-values;
  }
}

class combo-chart is bar-chart is line-chart {
  method plot { # cần phải ghi đè vì sẽ âm thầm chọn một trong hai phương thức
    say @.bar-values;
    say @.line-values;
  }
}
```

Role trong Raku tương đương như lớp, nhưng khi một role kết hợp nhiều role khác và có một phương thức được định nghĩa khác nhau trong các role, trình biên dịch sẽ báo lỗi thay vì xử lí âm thầm như kế thừa nhiều lớp.

```perl
role bar-chart {
  has Int @.bar-values;
  method plot {
    say @.bar-values;
  }
}

role line-chart {
  has Int @.line-values;
  method plot {
    say @.line-values;
  }
}

class combo-chart does bar-chart does line-chart {
}
```

