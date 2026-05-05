module basic_operations_mod
    implicit none
    
contains
    
    subroutine demo_basic_operations()
        implicit none
        real :: a, b
        real :: sum, difference, product, quotient
        
        print *, "===== PHÉP TOÁN CƠ BẢN ====="
        print *, "Nhập số thứ nhất: "
        read *, a
        print *, "Nhập số thứ hai: "
        read *, b
        
        ! Thực hiện các phép toán
        sum = a + b
        difference = a - b
        product = a * b
        
        ! Kiểm tra chia cho 0
        if (b /= 0) then
            quotient = a / b
            print *, "====================================="
            print *, "KẾT QUẢ PHÉP TOÁN:"
            print *, a, " + ", b, " = ", sum
            print *, a, " - ", b, " = ", difference
            print *, a, " * ", b, " = ", product
            print *, a, " / ", b, " = ", quotient
        else
            print *, "Lỗi: Không thể chia cho 0!"
        end if
        print *, "====================================="
        
    end subroutine demo_basic_operations
    
end module basic_operations_mod