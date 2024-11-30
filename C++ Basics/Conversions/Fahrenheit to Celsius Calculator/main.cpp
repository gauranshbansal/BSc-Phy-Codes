#include <iostream>

using namespace std;

int main()
{   double x;
    cout << "This is the Fahrenheit to Celsius Calculator!" << endl;
    cout << "Please enter temperature in Fahrenheit \n";
    cin>>x;
    cout << "The temperature in celsius is " << ((x-32)*5)/9 << " degree celsius \n";
    return 0;
}
