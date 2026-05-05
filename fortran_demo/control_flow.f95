module control_flow_mod
    implicit none
    
contains
    
    subroutine demo_control_flow()
        implicit none
        integer :: score, i, n
        integer :: number
        
        print *, "===== IF-ELSE VÀ VÒNG LẶP ====="
        
        ! Demo IF-ELSE
        print *, "Nhập điểm của bạn (0-100): "
        read *, score
        
        if (score >= 90) then
            print *, "Xếp loại: Xuất sắc (A)"
        else if (score >= 80) then
            print *, "Xếp loại: Giỏi (B)"
        else if (score >= 70) then
            print *, "Xếp loại: Khá (C)"
        else if (score >= 60) then
            print *, "Xếp loại: Trung bình (D)"
        else
            print *, "Xếp loại: Yếu (F)"
        end if
        
        ! Demo DO WHILE loop
        print *, "===== Demo DO WHILE loop ====="
        i = 1
        do while (i <= 5)
            print *, "Lần lặp DO WHILE thứ ", i
            i = i + 1
        end do
        
        ! Demo DO loop
        print *, "===== Demo DO loop ====="
        print *, "Nhập một số để in bảng cửu chương: "
        read *, number
        
        do i = 1, 10
            print *, number, " x ", i, " = ", number * i
        end do
        
        ! Demo vòng lặp với step
        print *, "===== Demo vòng lặp với STEP ====="
        print *, "Các số chẵn từ 2 đến 10:"
        do i = 2, 10, 2
            print *, i
        end do
        
        print *, "====================================="
        
    end subroutine demo_control_flow
    
end module control_flow_mod