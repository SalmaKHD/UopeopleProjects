// See Readme.java for details
@0 // 00
// int i=4; 
@4 // 01
D=A // 02
@i // 03
M=D // 04

// int j=0
@j // 05
M=0 // 06

// i<5
@i // 07
D=M // 08
@5 // 09
D=D-A // 10

// if (i<5 == true) j=3;
// approach 1: skip to the line that executes the body
// of the respective branch only (see the next program for approach 2)
@15 // 11
D;JLT // 12

// if (i<5 == false) j=2;
@21 // 13
D;JGE // 14

// j=3
@3 // 15 
D=A // 16
@j // 17
M=D // 18
@END // 19
0;JMP // 20

// j=2
@2 // 21
D=A // 22
@j // 23
M=D // 24
@END // 25
0;JMP // 26

(END) 
@END // 27
0;JMP // 28

// Expected Result:
// i == 4, j == 3