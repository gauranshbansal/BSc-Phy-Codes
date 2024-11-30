#include <iostream>

using namespace std;

int main()
{
    cout << "Enter The number of elements in the list \n" << endl;
    int n;
    cin>>n;
    int num[n];
    //Taking values of list from user
    cout<<"Please enter numsbers for the list- \n";
    for (int i=0; i<n; i++)
     {
       cin>>num[i];
     }
    //Calculating maximum
    cout<<"\n \n";
    int maxi,ind;
    for (int i=0;i<n;i++)
     {
      for(int j=0;j<n;j++)
       {
        if(num[i]>num[j])
         {
          maxi=num[i];
          ind=i;
         }
        else if(num[i]<num[j])
        break;
       }
     }
     cout<<"The maximum from the list is "<<maxi<<" and its index is "<<ind<<endl;
}
