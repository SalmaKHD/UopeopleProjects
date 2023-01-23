// See Readme.java for details
@0

// int i = 0
@i
M=0

// set base address of arr to 20
@20
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
@2
D=A
@arr
D=D+M
// store the base address in a temporary variable
@tmp
M=D
@3
D=A
@tmp
A=M
M=D

// arr[3]=2
@3
D=A
@arr
D=D+M
@tmp
M=D
@2
D=A
@tmp
A=M
M=D

// arr[4]=1
@4
D=A
@arr
D=D+M
@tmp
M=D
@1
D=A
@tmp
A=M
M=D

// arr[5]=0
@5
D=A
@arr
D=D+M
@tmp
M=D
@0
D=A
@tmp
A=M
M=D

// for (i=0;i<=5;i++) {if (A[i]==0) A[i]=5}
@LOOP
0;JMP

(LOOP)
// i<=5
@i
D=M
@5
D=D-A
// if (i<=5 == false) terminate the program
@END
D;JGT

// locate A[i] and test A[i]==0
@arr
D=M
@i
D=D+M
A=D 
D=M
@0
D=D-A

// if (A[i]==0) A[i]=5
// skip the if construct body if the condition evaluates to false
@90
D;JNE

// A[i]=5
@i
D=M
@arr
D=D+M
@tmp
M=D
@5
D=A
@tmp
A=M 
M=D 

// continue 
// i++
@i // 85
M=M+1
@LOOP
0;JMP

(END)
@END
0;JMP

// Expected Result
// Mem[20] == 5 
// Mem[21] == 4
// Mem[22] == 3
// Mem[23] == 2
// Mem[24] == 1
// Mem[25] == 5