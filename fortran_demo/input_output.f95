module input_output_mod
    implicit none
    
contains
    
    subroutine demo_input_output()
        implicit none
        character(len=100) :: name
        integer :: age
        real :: height
        
        print *, "===== DEMO NHẬP/XUẤT ====="
        
        ! Nhập chuỗi
        print *, "Nhập tên của bạn: "
        read '(A)', name
        
        ! Nhập số nguyên
        print *, "Nhập tuổi của bạn: "
        read *, age
        
        ! Nhập số thực
        print *, "Nhập chiều cao của bạn (m): "
        read *, height
        
        ! Xuất thông tin
        print *, "====================================="
        print *, "THÔNG TIN CỦA BẠN:"
        print *, "Tên: ", trim(name)
        print *, "Tuổi: ", age
        print *, "Chiều cao: ", height, " m"
        print *, "====================================="
        
    end subroutine demo_input_output
    
end module input_output_mod