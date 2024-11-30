#include <iostream>
#include <math.h>

using namespace std;

int main()
{
    cout << "This is the program to display prime numbers from 1-500:" << endl;
     for(int i=2; i<500; i++)
        {
         int n;
         for(n=2; n<i; n++)
          {
            {if(i%n==0)
              break;
            }
          }
        if (n==i)
            {
              cout<<i<<endl;
            }
        }
  return 0;
}
