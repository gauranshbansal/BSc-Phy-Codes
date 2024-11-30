#include <iostream>

using namespace std;

int main()
{
    cout << "This is the factorial calculator" << endl;
    cout<< "Please enter the number whose factorial you want to calculate-" <<endl;
    int n;
    cin>>n;
    int fact;
    fact=n;
    for (int i=n-1; i>0 ; i=i-1 )
       {
        fact=fact*i;
       }
    cout<< "The factorial of " <<n<< " is " << fact <<endl;
    return 0;
}
