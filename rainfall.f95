program rainfall
implicit none

integer::i,j,N,st
integer,parameter::Nmax=50
character(20)::town(Nmax)
real::rain(Nmax)

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
  read(1,*) town(j),rain(j)
end do

do i=N+1,Nmax
  write(town(i),*) "-"
  rain(i)=0
end do  

close(1)

print*,town
print*,rain

end program