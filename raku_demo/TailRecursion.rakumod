unit module TailRecursion;

# 1. Giai thừa với đệ quy đuôi
sub factorial-tail($n, $accumulator = 1) is export {
    return $accumulator if $n <= 1;
    return factorial-tail($n - 1, $n * $accumulator);
}

# 2. Tổng dãy số với đệ quy đuôi
sub sum-tail($n, $accumulator = 0) is export {
    return $accumulator if $n <= 0;
    return sum-tail($n - 1, $n + $accumulator);
}

# 3. Fibonacci với đệ quy đuôi
sub fibonacci-tail($n, $a = 0, $b = 1) is export {
    return $a if $n == 0;
    return $b if $n == 1;
    return fibonacci-tail($n - 1, $b, $a + $b);
}

# 4. Lũy thừa với đệ quy đuôi
sub power-tail($base, $exp, $result = 1) is export {
    return $result if $exp == 0;
    return power-tail($base, $exp - 1, $result * $base);
}

# 5. GCD (ước chung lớn nhất) với đệ quy đuôi
sub gcd-tail($a, $b) is export {
    return $a if $b == 0;
    return gcd-tail($b, $a % $b);
}

# 6. Đảo chuỗi với đệ quy đuôi
sub reverse-string-tail($str, $start = 0, $end = $str.chars - 1) is export {
    return $str if $start >= $end;
    
    my @chars = $str.comb;
    ($@chars[$start], $@chars[$end]) = ($@chars[$end], $@chars[$start]);
    
    return reverse-string-tail(@chars.join, $start + 1, $end - 1);
}

# Demo tổng hợp
sub demo-tail-recursion is export {
    say "===== DEMO ĐỆ QUY ĐUÔI (TAIL RECURSION) =====";
    
    # 1. Giai thừa
    say "\n1. GIAI THỪA:";
    for 0..10 -> $i {
        say "$i! = { factorial-tail($i) }";
    }
    
    # 2. Tổng dãy số
    say "\n2. TỔNG DÃY SỐ 1->N:";
    for 1..10 -> $i {
        say "1 + 2 + ... + $i = { sum-tail($i) }";
    }
    
    # 3. Fibonacci
    say "\n3. DÃY FIBONACCI:";
    for 0..15 -> $i {
        say "F($i) = { fibonacci-tail($i) }";
    }
    
    # 4. Lũy thừa
    say "\n4. LŨY THỪA:";
    my $base = 2;
    for 0..10 -> $i {
        say "$base^$i = { power-tail($base, $i) }";
    }
    
    # 5. GCD
    say "\n5. ƯỚC CHUNG LỚN NHẤT (GCD):";
    say "GCD(48, 18) = { gcd-tail(48, 18) }";
    say "GCD(56, 98) = { gcd-tail(56, 98) }";
    say "GCD(1071, 462) = { gcd-tail(1071, 462) }";
    
    # 6. Đảo chuỗi
    say "\n6. ĐẢO NGƯỢC CHUỖI:";
    my $test-str = "Tail Recursion in Raku";
    say "Chuỗi gốc: $test-str";
    say "Chuỗi đảo: { reverse-string-tail($test-str) }";
    
    say "\n=====================================";
}