program generar_datos_aleatorios
    implicit none
    integer :: i
    real :: r
    integer :: numero
    integer, parameter :: n = 100
    integer, dimension(n) :: datos, vec
    character(len=20) :: archivo

    ! Especificamos el archivo de salida
    archivo = '1000datos.dat'

    ! Inicializa la semilla del generador de números aleatorios
    call random_seed()

    ! Abre el archivo para escribir los datos
    open(unit=10, file=archivo, status='replace')

    ! Genera 1000 números aleatorios entre 1 y 20
    do i = 1, n
        call random_number(r)  ! Genera un número aleatorio entre 0 y 1
        numero = int(r * 20) + 1  ! Escala el número entre 1 y 20
        datos(i) = numero
        !vec(i)=datos
        write(10,*) datos(i) ! i, datos(i)  ! Escribe el número en el archivo
    end do

    ! Cierra el archivo
    close(10)

    print *, 'Se han generado 1000 números aleatorios entre 1 y 20 y se han guardado en el archivo', archivo

end program generar_datos_aleatorios
 
