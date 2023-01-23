// This assembly program implements the following code written in Java
int[] arr = new int[6];
arr[0] =5;
arr[1]=4;
arr[2]=3;
arr[3]=2;
arr[4]=1;
arr[5]=0;

int j;
int flag = 1; // set flag to true to begin first pass
int temp; // holding variable

while (flag == 1)
{
	flag = 0; // set flag to false awaiting a possible swap
    for(j = 0; j < 6; j++)
    {
        if (arr[ j ] > arr[j+1] ) // test for ascending sort
        {
            temp = arr[j]; // swap elements
            arr[j] = arr[j+1];
            arr[j+1] = temp;
            flag = 1; // shows a swap occurred 
        }
    }
}