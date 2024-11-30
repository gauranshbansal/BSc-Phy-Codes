#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    cout<< "Method Of Least Squares"<<endl;
    //define table
    int x[3]={1, 2, 4};
    float y[3]={5, 10, 30};
    float Y[3];
    for(int i=0; i<3; i++){
        Y[i]=log(y[i]);
    }

    //assign value for other data

    float xsqr[3];
    float prd[3];
    for (int i=0; i<3; i++){
         xsqr[i]=x[i]*x[i];
         prd[i]=x[i]*Y[i];
    }
    float sumx=0;
    float sumy=0;
    float sumxsqr=0;
    float sumxy=0;
    for (int i=0; i<3; i++){
        sumx=x[i]+sumx;
        sumy=Y[i]+sumy;
        sumxsqr=xsqr[i]+sumxsqr;
        sumxy=prd[i]+sumxy;
    }
    //check
    cout<<sumx<<endl;
    cout<<sumy<<endl;
    cout<<sumxsqr<<endl;
    cout<<sumxy<<endl;

    //value of a and b
    float A,B;
    A=(sumy*sumxsqr-sumx*sumxy)/(3*sumxsqr-sumx*sumx);
    B=(sumxy-sumx*A)/sumxsqr;
    float a,b;
    a=pow(2.718,A);
    b=B;
    cout<<endl;
    cout<<"a is "<<a<<endl;
    cout<<"b is "<<b<<endl;
    cout<<"The linear fit line is y = "<<a<<" + "<<b<<"x \n";

}
