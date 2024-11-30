#include <iostream>

using namespace std;

int main()
{
    cout << "Enter the number to check whether prime or not:"<< endl;
    int n;
    cin>>n;
    for(int i=2 ;i<n ;i++)
       { if(n%i==0)
         {cout<<"The entered number is not a Prime Number"<<endl;
          break;
         }
        else
        {cout<<"The given number is a Prime Number"<<endl;
          break;
        }
       }
    return 0;
}
