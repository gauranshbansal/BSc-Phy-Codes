#include <iostream>

using namespace std;

int main()
{
    int x,y,z;
    x=1;
    y=3;

    cout <<x<<"\t"<<y<<endl;
    z=x;
    x=y;
    y=z;
    cout<<"after swappping- \n";
    cout<<x<<"\t"<<y<<endl;
    return 0;
}
