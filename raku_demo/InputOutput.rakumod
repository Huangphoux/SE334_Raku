unit module InputOutput;

sub demo-input-output is export {
    say "===== DEMO NHẬP/XUẤT =====";
    
    print "Nhập tên của bạn: ";
    my $name = prompt();
    
    print "Nhập tuổi của bạn: ";
    my $age = prompt();
    
    print "Nhập chiều cao của bạn (m): ";
    my $height = prompt();
    
    say "=====================================";
    say "THÔNG TIN CỦA BẠN:";
    say "Tên: $name";
    say "Tuổi: $age";
    say "Chiều cao: $height m";
    say "=====================================";
}