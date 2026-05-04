! tail_recursion.f95
! Module chứa các hàm đệ quy đuôi (Tail Recursion)
module tail_recursion_mod
    implicit none
    
contains
    
    ! ============================================
    ! 1. GIAI THỪA (Factorial) bằng đệ quy đuôi
    ! ============================================
    recursive function factorial_tail(n, accumulator) result(res)
        integer, intent(in) :: n, accumulator
        integer :: res
        
        if (n <= 1) then
            res = accumulator
        else
            ! Đệ quy đuôi: kết quả trả về trực tiếp từ lời gọi
            res = factorial_tail(n - 1, n * accumulator)
        end if
    end function factorial_tail
    
    ! Hàm wrapper cho giai thừa
    function factorial(n) result(res)
        integer, intent(in) :: n
        integer :: res
        
        if (n < 0) then
            print *, "Lỗi: Không tính giai thừa số âm!"
            res = -1
            return
        else if (n == 0) then
            res = 1
            return
        end if
        res = factorial_tail(n, 1)
    end function factorial
    
    
    ! ============================================
    ! 2. TỔNG DÃY SỐ (Sum from 1 to n) bằng đệ quy đuôi
    ! ============================================
    recursive function sum_tail(n, accumulator) result(res)
        integer, intent(in) :: n, accumulator
        integer :: res
        
        if (n <= 0) then
            res = accumulator
        else
            res = sum_tail(n - 1, n + accumulator)
        end if
    end function sum_tail
    
    function sum_range(n) result(res)
        integer, intent(in) :: n
        integer :: res
        
        if (n < 0) then
            print *, "Lỗi: n phải lớn hơn hoặc bằng 0!"
            res = -1
            return
        end if
        res = sum_tail(n, 0)
    end function sum_range
    
    
    ! ============================================
    ! 3. FIBONACCI bằng đệ quy đuôi (hiệu quả hơn đệ quy thường)
    ! ============================================
    recursive function fibonacci_tail(n, a, b) result(res)
        integer, intent(in) :: n, a, b
        integer :: res
        
        if (n == 0) then
            res = a
        else if (n == 1) then
            res = b
        else
            res = fibonacci_tail(n - 1, b, a + b)
        end if
    end function fibonacci_tail
    
    function fibonacci(n) result(res)
        integer, intent(in) :: n
        integer :: res
        
        if (n < 0) then
            print *, "Lỗi: n phải lớn hơn hoặc bằng 0!"
            res = -1
            return
        end if
        res = fibonacci_tail(n, 0, 1)
    end function fibonacci
    
    
    ! ============================================
    ! 4. LŨY THỪA (Power) bằng đệ quy đuôi
    ! ============================================
    recursive function power_tail(base, exp, result_acc) result(res)
        real, intent(in) :: base
        integer, intent(in) :: exp
        real, intent(in) :: result_acc
        real :: res
        
        if (exp == 0) then
            res = result_acc
        else
            res = power_tail(base, exp - 1, result_acc * base)
        end if
    end function power_tail
    
    function power(base, exp) result(res)
        real, intent(in) :: base
        integer, intent(in) :: exp
        real :: res
        
        if (exp == 0) then
            res = 1.0
        else if (exp > 0) then
            res = power_tail(base, exp, 1.0)
        else
            ! Xử lý số mũ âm
            res = 1.0 / power_tail(base, -exp, 1.0)
        end if
    end function power
    
    
    ! ============================================
    ! 5. TÌM UCLN (GCD) bằng đệ quy đuôi (thuật toán Euclid)
    ! ============================================
    recursive function gcd_tail(a, b) result(res)
        integer, intent(in) :: a, b
        integer :: res
        
        if (b == 0) then
            res = a
        else
            res = gcd_tail(b, mod(a, b))
        end if
    end function gcd_tail
    
    function gcd(a, b) result(res)
        integer, intent(in) :: a, b
        integer :: res
        res = gcd_tail(abs(a), abs(b))
    end function gcd
    
    
    ! ============================================
    ! 6. ĐẢO NGƯỢC CHUỖI bằng đệ quy đuôi
    ! ============================================
    recursive subroutine reverse_string_tail(str, start_idx, end_idx)
        character(len=*), intent(inout) :: str
        integer, intent(in) :: start_idx, end_idx
        character :: temp_char
        
        if (start_idx < end_idx) then
            ! Hoán đổi ký tự
            temp_char = str(start_idx:start_idx)
            str(start_idx:start_idx) = str(end_idx:end_idx)
            str(end_idx:end_idx) = temp_char
            
            ! Gọi đệ quy đuôi
            call reverse_string_tail(str, start_idx + 1, end_idx - 1)
        end if
    end subroutine reverse_string_tail
    
    subroutine reverse_string(str)
        character(len=*), intent(inout) :: str
        integer :: len_str
        
        len_str = len_trim(str)
        call reverse_string_tail(str, 1, len_str)
    end subroutine reverse_string
    
    
    ! ============================================
    ! HÀM DEMO TỔNG HỢP TẤT CẢ CÁC VÍ DỤ
    ! ============================================
    subroutine demo_tail_recursion()
        implicit none
        integer :: i
        real :: base
        integer :: num1, num2
        character(len=100) :: test_str
        
        print *, "=========================================="
        print *, "DEMO ĐỆ QUY ĐUÔI (TAIL RECURSION)"
        print *, "=========================================="
        
        ! 1. Demo giai thừa
        print *, "1. GIAI THỪA:"
        do i = 0, 10
            print *, i, "! = ", factorial(i)
        end do
        
        print *, ""
        
        ! 2. Demo tổng dãy số
        print *, "2. TỔNG DÃY SỐ 1->N:"
        do i = 1, 10
            print *, "1 + 2 + ... + ", i, " = ", sum_range(i)
        end do
        
        print *, ""
        
        ! 3. Demo Fibonacci
        print *, "3. DÃY FIBONACCI:"
        do i = 0, 15
            print *, "F(", i, ") = ", fibonacci(i)
        end do
        
        print *, ""
        
        ! 4. Demo lũy thừa
        print *, "4. LŨY THỪA:"
        base = 2.0
        do i = 0, 10
            print *, base, "^", i, " = ", power(base, i)
        end do
        
        print *, ""
        
        ! 5. Demo UCLN
        print *, "5. ƯỚC CHUNG LỚN NHẤT (GCD):"
        num1 = 48
        num2 = 18
        print *, "GCD(", num1, ",", num2, ") = ", gcd(num1, num2)
        print *, "GCD(56, 98) = ", gcd(56, 98)
        print *, "GCD(1071, 462) = ", gcd(1071, 462)
        
        print *, ""
        
        ! 6. Demo đảo chuỗi
        print *, "6. ĐẢO NGƯỢC CHUỖI:"
        test_str = "Tail Recursion in Fortran"
        print *, "Chuỗi gốc: ", trim(test_str)
        call reverse_string(test_str)
        print *, "Chuỗi đảo: ", trim(test_str)
        
        test_str = "Hello World"
        print *, "Chuỗi gốc: ", trim(test_str)
        call reverse_string(test_str)
        print *, "Chuỗi đảo: ", trim(test_str)
        
        print *, "=========================================="
        
    end subroutine demo_tail_recursion
    
end module tail_recursion_mod