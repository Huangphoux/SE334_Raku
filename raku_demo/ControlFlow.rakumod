unit module ControlFlow;

sub demo-control-flow is export {
    say "===== IF-ELSE VÀ VÒNG LẶP =====";
    
    # Demo IF-ELSE
    print "Nhập điểm của bạn (0-100): ";
    my $score = prompt();
    
    given $score {
        when 90..100 { say "Xếp loại: Xuất sắc (A)" }
        when 80..89  { say "Xếp loại: Giỏi (B)" }
        when 70..79  { say "Xếp loại: Khá (C)" }
        when 60..69  { say "Xếp loại: Trung bình (D)" }
        default      { say "Xếp loại: Yếu (F)" }
    }
    
    # Demo vòng lặp while
    say "===== Demo vòng lặp while =====";
    my $i = 1;
    while $i <= 5 {
        say "Lần lặp while thứ $i";
        $i++;
    }
    
    # Demo vòng lặp for
    say "===== Demo bảng cửu chương =====";
    print "Nhập một số để in bảng cửu chương: ";
    my $number = prompt();
    
    for 1..10 -> $i {
        say "$number x $i = { $number * $i }";
    }
    
    # Demo vòng lặp với step
    say "===== Vòng lặp với step =====";
    say "Các số chẵn từ 2 đến 10:";
    for 2, 4 ... 10 {
        say $_;
    }
    
    say "=====================================";
}