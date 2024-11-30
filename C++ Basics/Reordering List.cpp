#include <iostream>

using namespace std;

int main()
{
    int n;
    float temp;
    cout<<"Enter the number of elements in the list:";
    cin>>n;
    int x[n];
    for (int i=0;i<n;i++){
        cin>>x[i];
    }
    for (int i=0; i<n-1;i++){
        for(int j=i+1;j<n;j++)
        {
            if(x[i]<x[j]){
                temp=x[i];
                x[i]=x[j];
                x[j]=temp;
            }
        }
    }
    cout<<"List In Descending Order"<<endl;
    for(int i=0;i<n;i++){
     cout<<x[i]<<endl;
    }

    return 0;
}
