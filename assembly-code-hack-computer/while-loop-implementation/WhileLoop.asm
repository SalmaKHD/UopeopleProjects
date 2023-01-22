// See Readme.java for details
// int i=0
@i
M=0
// int j=0
@j
M=0

// while (i==0) {j++; if (j==5) i = j}
@LOOP
0;JMP

(LOOP)
// i==0
@i
D=M
@0
D=D-A

// if ((i==0) == false) terminate the program
@END
D;JNE

// while((i==0) == true)  {j++; if (j==5) i = j}
// j++
@j
M=M+1

// if (j==5) i = j
// j==5
@j
D=M
@5
D=D-A
// approach 2: skip the body of the if construct if 
// the condition evaluates to false
@24
D;JNE

// i = j
@j
D=M
@i
M=D

// repeat
@LOOP // 24
0;JMP

// terminate the program
(END)
@END
0;JMP

// Expected Result
// i == 5, j == 5
