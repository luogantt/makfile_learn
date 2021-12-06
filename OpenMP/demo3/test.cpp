
#include <iostream>
#include <math.h>
#include <omp.h>
 
using namespace std;
int main()
{
    const int NUMBER = 100;
    int* dataA = new int[NUMBER];
    int* dataB = new int[NUMBER];
    for (int i= 0; i < NUMBER; i++)
    {
        dataA[i] = i+1;
        dataB[i] = 2*(i+1);
    }    
    long double sum = 0.0;
 
    omp_set_num_threads(4);
#pragma omp parallel for reduction(+:sum)
    for (int i = 0; i < NUMBER;  i++) 
    {
        sum += dataA[i] + dataB[i];
    }   
    cout<<sum<<endl;
 
    delete [] dataA;
    delete [] dataB;
   
    return 0;
}
 

