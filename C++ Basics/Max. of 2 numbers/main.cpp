#include <iostream>

using namespace std;

int main()
{   double a,b;
    cout << "This is a program to calculate the maximum of 2 numbers" << endl;
    cout << "Please enter the first number \n";
    cin>>a;
    cout << "Please enter the second number \n";
    cin>>b;
    if (a>b)
        cout <<"The maximum of the two is " <<a<< endl;
    else if (a<b)
        cout <<"The maximum of the two is " <<b<< endl;
    else
        cout <<"The numbers are equal in value \n";
    return 0;
}
