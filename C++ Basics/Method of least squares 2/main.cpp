#include <iostream>
#include <bits/stdc++.h>
using namespace std;

int main()
{
    cout<< "Method Of Least Squares"<<endl;
    cout<<"Please enter the number of rows:"<<endl;
    int n;
    cin>>n;
    //define table
    int x[3]={1, 2, 4};
    float y[3]={5, 10, 30};

    float Y[3];
    for(int i=0; i<4; i++){
        float Y[i]={log(y[i])};
    }
    cout<<Y[1];

}
