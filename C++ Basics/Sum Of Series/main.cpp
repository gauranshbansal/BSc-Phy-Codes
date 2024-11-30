#include <iostream>

using namespace std;

int main()
{
    cout << "Calculator for a given series!" << endl;
    cout << "Please enter the value of n-" << endl;
    int n;
    cin>>n;
    int sum;
    sum=0;
    for (int i=1;i<=n;i=i+1)
        {
          sum=sum+(i*i);
        }
    cout<< "The value of the series is " <<sum<<endl;
    return 0;
}
