program main
    use my_module
    use input_output_mod
    use basic_operations_mod
    use array_string_mod
    use control_flow_mod
    use tail_recursion_mod
    implicit none
    
    character(len=100) :: name
    integer :: choice
    
    ! Hiển thị menu
    do
        print *, "====================================="
        print *, "FORTAN DEMO - CAC KHÁI NIỆM CƠ BẢN"
        print *, "====================================="
        print *, "1. Nhập/Xuất dữ liệu"
        print *, "2. Phép toán cơ bản (+ - * /)"
        print *, "3. Mảng và chuỗi"
        print *, "4. If-Else và vòng lặp"
        print *, "5. Sử dụng Module"
        print *, "6. ĐỆ QUY ĐUÔI (Tail Recursion)"
        print *, "0. Thoát"
        print *, "====================================="
        print *, "Nhập lựa chọn của bạn: "
        read *, choice
        
        select case (choice)
            case (1)
                call demo_input_output()
            case (2)
                call demo_basic_operations()
            case (3)
                call demo_array_string()
            case (4)
                call demo_control_flow()
            case (5)
                call demo_module_example()
            case (6)
                call demo_tail_recursion()
            case (0)
                print *, "Cảm ơn bạn đã sử dụng chương trình!"
                stop
            case default
                print *, "Lựa chọn không hợp lệ!"
        end select
    end do
    
end program main