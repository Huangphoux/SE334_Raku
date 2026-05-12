unit module ArrayString;

sub demo-array-string is export {
    say "===== MẢNG VÀ CHUỖI =====";
    
    # Demo MẢNG
    my @numbers;
    for 1..5 -> $i {
        print "Số thứ $i: ";
        @numbers.push(prompt());
    }
    
    say "Mảng vừa nhập: @numbers[]";
    
    # Demo CHUỖI
    print "Nhập chuỗi thứ nhất: ";
    my $str1 = prompt();
    
    print "Nhập chuỗi thứ hai: ";
    my $str2 = prompt();
    
    # Nối chuỗi
    my $result-str = "$str1 $str2";
    say "Chuỗi sau khi nối: $result-str";
    
    # Demo mảng chuỗi
    my @fruits = "Táo", "Cam", "Chuối";
    say "Danh sách trái cây:";
    for @fruits.kv -> $i, $fruit {
        say "{ $i + 1 }. $fruit";
    }
    
    say "=====================================";
}