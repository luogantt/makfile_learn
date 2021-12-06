#include <omp.h>
#include <stdio.h>
#include <stdlib.h>


#include <iostream>
 
using namespace std;
int main()
{
#pragma omp parallel for
    for (int i=0; i<10; i++) 
    {
        //cout << i<<"\n"<<endl;
	cout << i;
    } 
 
    return 0;
}


