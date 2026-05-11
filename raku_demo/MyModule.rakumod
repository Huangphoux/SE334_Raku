unit module MyModule;

# Hằng số
my $PI = 3.14159;

# Hàm tính giai thừa (đệ quy thường)
sub factorial($n) is export {
    return 1 if $n <= 1;
    return $n * factorial($n - 1);
}

# Hàm tính diện tích hình tròn
sub circle-area($radius) is export {
    return $PI * $radius * $radius;
}

# Subroutine demo module
sub demo-module-example is export {
    say "===== DEMO MODULE =====";
    say "Giá trị hằng số PI = $PI";
    
    print "Nhập một số để tính giai thừa: ";
    my $num = prompt();
    say "$num! = { factorial($num) }";
    
    print "Nhập bán kính hình tròn: ";
    my $radius = prompt();
    say "Diện tích hình tròn: { circle-area($radius) }";
    
    say "=====================================";
}