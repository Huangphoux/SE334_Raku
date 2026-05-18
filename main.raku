#!/usr/bin/env raku

use lib '.';
use InputOutput;
use BasicOperations;
use ArrayString;
use ControlFlow;
use MyModule;
use TailRecursion;

my $choice = 0;

loop {
    say "=====================================";
    say "RAKU DEMO - CÁC KHÁI NIỆM CƠ BẢN";
    say "=====================================";
    say "1. Nhập/Xuất dữ liệu";
    say "2. Phép toán cơ bản (+ - * /)";
    say "3. Mảng và chuỗi";
    say "4. If-Else và vòng lặp";
    say "5. Sử dụng Module";
    say "6. Đệ quy đuôi (Tail Recursion)";
    say "0. Thoát";
    say "=====================================";
    print "Nhập lựa chọn của bạn: ";
    
    $choice = prompt();
    
    given $choice {
        when 1 { demo-input-output() }
        when 2 { demo-basic-operations() }
        when 3 { demo-array-string() }
        when 4 { demo-control-flow() }
        when 5 { demo-module-example() }
        when 6 { demo-tail-recursion() }
        when 0 {
            say "Cảm ơn bạn đã sử dụng chương trình!";
            last;
        }
        default { say "Lựa chọn không hợp lệ!" }
    }
    
    say "";
}