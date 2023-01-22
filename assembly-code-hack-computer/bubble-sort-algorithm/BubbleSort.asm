// See Readme.java for details
// base address of arr = 100
@100
D=A
@arr
M=D

// arr[0]=5
@5
D=A
@arr
A=M
M=D

// arr[1]=4
@4
D=A
@arr
A=M+1
M=D

// arr[2]=3
@arr
D=M
@2
D=D+A
@elementAddress
M=D
@3
D=A
@elementAddress
A=M
M=D

// arr[3]=2
@arr
D=M
@3
D=D+A
@elementAddress
M=D
@2
D=A
@elementAddress
A=M
M=D

// arr[4]=1
@arr
D=M
@4
D=D+A
@elementAddress
M=D
@1
D=A
@elementAddress
A=M
M=D

// arr[5]=0
@arr
D=M
@5
D=D+A
@elementAddress
M=D
D=0
@elementAddress
A=M
M=D

// array initialization complete

// int j = 0
@j
M=0

// int flag = 1
@flag
M=1

// int temp = 0
@temp
M=0

// while (flag==0) ...
@LOOP
0;JMP
 
(LOOP)
// if (flag==1 == false) terminate the program
@flag
D=M
D=D-1
@END
D;JNE

// start of while body
// flag=false (0)
@flag
M=0

// for (j=0; j<6; j++) {...}
// j=0
@j
M=0

// if (j<6==false) continue
@j
D=M
@5
D=D-A
@136 // while continue instruction number
D;JGE

// start of for body
// locate arr[j]
@arr
D=M
@j
D=D+M
A=D
D=M
@element1
M=D

// locate A[j+1]
@arr
D=M
@j
D=D+M
D=D+1
A=D
D=M
@element2
M=D

// if (arr[j]>arr[j+1] == false) continue to the next iteration of the for loop
@element1
D=M
@element2
D=D-M
@132
D;JLE

// start of if body
// temp=A[j]
@element1
D=M
@temp
M=D

// arr[j]=arr[j+1]
@arr
D=M
@j
D=D+M
@elementAddress
M=D
@element2
D=M
@elementAddress
A=M
M=D

// A[j+1]=temp
@arr
D=M
@j
D=D+M
D=D+1
@elementAddress
M=D
@temp
D=M
@elementAddress
A=M
M=D

// flag=1
@flag
M=1
// end of if body

// j++
@j
M=M+1
@74
0;JMP
// end of for body

// continue
@LOOP
0;JMP
// end of while body

// terminate program
(END)
@END
0;JMP

// expected result:
// Mem[100] == 0
// Mem[101] == 1
// Mem[102] == 2
// Mem[103] == 3
// Mem[104] == 4
// Mem[105] == 5

// Test Complete