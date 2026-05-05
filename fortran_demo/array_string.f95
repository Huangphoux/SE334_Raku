module array_string_mod
    implicit none
    
contains
    
    subroutine demo_array_string()
        implicit none
        integer, dimension(5) :: numbers
        character(len=20), dimension(3) :: fruits
        integer :: i
        character(len=100) :: str1, str2, result_str
        
        print *, "===== MẢNG VÀ CHUỖI ====="
        
        ! Demo MẢNG
        print *, "Nhập 5 số nguyên: "
        do i = 1, 5
            print *, "Số thứ ", i, ": "
            read *, numbers(i)
        end do
        
        print *, "Mảng vừa nhập: "
        do i = 1, 5
            print *, numbers(i)
        end do
        
        ! Demo CHUỖI
        print *, "Nhập chuỗi thứ nhất: "
        read '(A)', str1
        print *, "Nhập chuỗi thứ hai: "
        read '(A)', str2
        
        ! Nối chuỗi
        result_str = trim(str1) // " " // trim(str2)
        print *, "Chuỗi sau khi nối: ", trim(result_str)
        
        ! Demo mảng chuỗi
        fruits(1) = "Táo"
        fruits(2) = "Cam"
        fruits(3) = "Chuối"
        
        print *, "Danh sách trái cây:"
        do i = 1, 3
            print *, i, ". ", trim(fruits(i))
        end do
        
        print *, "====================================="
        
    end subroutine demo_array_string
    
end module array_string_mod