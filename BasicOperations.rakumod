unit module BasicOperations;

sub demo-basic-operations is export {
    say "===== PHÉP TOÁN CƠ BẢN =====";
    
    print "Nhập số thứ nhất: ";
    my $a = prompt();
    
    print "Nhập số thứ hai: ";
    my $b = prompt();
    
    my $sum = $a + $b;
    my $difference = $a - $b;
    my $product = $a * $b;
    
    say "=====================================";
    say "KẾT QUẢ PHÉP TOÁN:";
    say "$a + $b = $sum";
    say "$a - $b = $difference";
    say "$a * $b = $product";
    
    if $b != 0 {
        my $quotient = $a / $b;
        say "$a / $b = $quotient";
    } else {
        say "Lỗi: Không thể chia cho 0!";
    }
    say "=====================================";
}