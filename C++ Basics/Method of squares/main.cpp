#include <iostream>

using namespace std;

int main()
{
    cout<< "Method Of Least Squares"<<endl;

    //define table

    int x[5]={0, 1 , 2, 3, 4};
    float y[5]={1.0, 1.8, 3.3, 4.5, 6.3};

    //assign value for other data

    float xsqr[5];
    for(int i=0; i<6; i++){
        xsqr[i]=x[i]*x[i];
        continue;
    }
    float prd[5];
    for (int i=0; i<6; i++){
        prd[i]=x[i]*y[i];
        continue;
    }
    float sumx=0;
    float sumy=0;
    float sumxsqr=0;
    float sumxy=0;
    for (int i=0; i<5; i++){
        sumx=x[i]+sumx;
        sumy=y[i]+sumy;
        sumxsqr=xsqr[i]+sumxsqr;
        sumxy=prd[i]+sumxy;
    }
    //check
    cout<<sumx<<endl;
    cout<<sumy<<endl;
    cout<<sumxsqr<<endl;
    cout<<sumxy<<endl;

    //value of a and b
    float a,b;
    a=(sumy*sumxsqr-sumx*sumxy)/(5*sumxsqr-sumx*sumx);
    b=(sumxy-sumx*a)/sumxsqr;
    cout<<endl;
    cout<<"a is "<<a<<endl;
    cout<<"b is "<<b<<endl;
    cout<<"The linear fit line is y = "<<a<<" + "<<b<<"x \n";
}
