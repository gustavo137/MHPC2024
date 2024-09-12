program data_random
    implicit none
    integer :: i, j
    real :: r
    integer :: number
    integer, parameter :: n = 100000
    integer, dimension(n) :: data
    integer, dimension(20) :: counter = 0  !to count the total of each number
    character(len=20) :: total_data, total_each_data

    total_data = 'data_n.dat'
    total_each_data = 'data_histo_n.dat'

    call random_seed()
    open(unit=10, file=total_data, status='replace')
    do i = 1, n
        call random_number(r)
        number = int(r * 20) + 1  ! put the random number between 0 and 20   
        data(i) = number
        counter(number) = counter(number) + 1  ! if 'number' apears again 
        write(10,*) data(i)  ! save data
    end do
    close(10)

    open(unit=20, file=total_each_data, status='replace')
    write(20, *) 'num ', 'Tot-reps'
    do j = 1, 20
        write(20, '(I2, 1X, I5)') j, counter(j)
    end do
    close(20)

    print *, 'Generated n=',n,' random numbers from 1 to 20 in ', total_data
    print *, 'The counter of each number is in ', total_each_data

end program data_random

