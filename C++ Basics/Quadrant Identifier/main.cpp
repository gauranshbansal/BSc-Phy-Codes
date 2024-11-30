#include <iostream>

using namespace std;

int main()
{   float x,y;
    cout << "Welcome to Quadrant Identifier!!!" << endl;
    cout << "Please enter the x coordinate \n";
    cin>> x;
    cout << "PLease enter the y coordinate \n";
    cin>> y;

    if(x>0 && y>0)
        cout<< "The point lies in the 1st Quadrant \n";
    else if (x<0 && y>0)
        cout<< "The point lies in the 2nd Quadrant \n";
    else if (x<0 && y<0)
        cout<< "The point lies in the 3rd Quadrant \n";
    else
        cout<< "The point lies in the 4th Quadrant \n";
    return 0;
}
