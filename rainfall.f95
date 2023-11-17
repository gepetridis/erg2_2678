program rainfall
implicit none

integer::i,j,k,N,st
integer,parameter::Nmax=50
character(20)::town(Nmax)
real::rain(Nmax)

!open(1,file='data.txt')

!N=0

!read(1,*)
!do
!  read (1,*,iostat=st)
!  if (st==-1) exit
!  N=N+1 
!end do 

!rewind(1)
!read(1,*)

!do j=1,N
!  read(1,*) town(j),rain(j)
!end do

!do i=N+1,Nmax
!  write(town(i),*) "-"
!  rain(i)=0
!end do  

!close(1)

call dataread(Nmax,town,rain,N)

do k=1,Nmax
  print*,town(k),rain(k)
end do



contains

subroutine dataread(Nmax,T,R,N)

integer::i,j,st
integer,intent(in)::Nmax
integer,intent(out)::N
character(20),intent(out)::T(Nmax)
real,intent(out)::R(Nmax)

!print*,'Gia poses poleis zitounte dedomena?'
!read*,Nmax

open(1,file='data.txt')

N=0

read(1,*)
do
  read (1,*,iostat=st)
  if (st==-1) exit
  N=N+1 
end do 

rewind(1)
read(1,*)

do j=1,N
  read(1,*) T(j),R(j)
end do

do i=N+1,Nmax
  write(T(i),*) "-"
  R(i)=0
end do  

close(1)

end subroutine

end program