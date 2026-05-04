module my_module
    implicit none
    
    ! Biến toàn cục trong module
    real, parameter :: PI = 3.14159
    character(len=50) :: module_name = "My Fortran Module"
    
contains
    
    ! Hàm tính giai thừa
    recursive function factorial(n) result(res)
        integer, intent(in) :: n
        integer :: res
        
        if (n <= 1) then
            res = 1
        else
            res = n * factorial(n - 1)
        end if
    end function factorial
    
    ! Hàm tính diện tích hình tròn
    function circle_area(radius) result(area)
        real, intent(in) :: radius
        real :: area
        
        area = PI * radius * radius
    end function circle_area
    
    ! Subroutine demo module
    subroutine demo_module_example()
        implicit none
        integer :: num, fact_result
        real :: radius, area_result
        
        print *, "===== DEMO MODULE ====="
        print *, "Module name: ", trim(module_name)
        print *, "Giá trị hằng số PI = ", PI
        
        ! Demo hàm giai thừa
        print *, "Nhập một số để tính giai thừa: "
        read *, num
        fact_result = factorial(num)
        print *, num, "! = ", fact_result
        
        ! Demo hàm diện tích hình tròn
        print *, "Nhập bán kính hình tròn: "
        read *, radius
        area_result = circle_area(radius)
        print *, "Diện tích hình tròn: ", area_result
        
        print *, "====================================="
        
    end subroutine demo_module_example
    
end module my_module