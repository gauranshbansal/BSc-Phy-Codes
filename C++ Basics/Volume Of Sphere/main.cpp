#include <iostream>

using namespace std;

int main()
{
    double x;
    cout << "This is the volume of sphere calculator!" << endl;
    cout << "Please enter the radius for the required sphere \n";
    cin>>x;
    cout << "The volume of the sphere is " << (4/3)*3.14*x*x*x << " cubic cm\n";

    return 0;
}
