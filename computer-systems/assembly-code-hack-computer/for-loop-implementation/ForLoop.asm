// See Readme.java for details
@0
// int j=5
@5
D=A
@j 
M=D 

// int i = 1
@i
M=1

// for (i=1;i<5;i++) j--;
@LOOP
0;JMP

// LOOP Definition
(LOOP)
// i<5
@i
D=M
@5
D=D-A

// if (i<5 == false) terminate the program 
@END
D;JGE

// if (i<5 == true) {j--; i++;}
// j--
@j
M=M-1
// i++
@i
M=M+1
@LOOP
0;JMP

// infinite loop, pro termination 
(END)
@END
0;JMP

// Expected Result
// i == 5, j == 1