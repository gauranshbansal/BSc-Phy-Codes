#include <iostream>

using namespace std;

int main()
{
    cout << "This Program Finds The Minimum In A Given List \n \n" << endl;
    int num[10];
    //Taking values of list from user
    cout<<"Please enter 10 numbers for the list- \n";
    for (int i=0; i<10; i++)
     {
       cin>>num[i];
     }
    //Printing the list for checking
    cout<<"\n"<<endl;
    for (int j=0; j<10; j++)
     {
       cout<<num[j]<<endl;
     }
    //Calculating minimum
    cout<<"\n \n";
    int min;
    for (int k=0;k<10;k++)
     {
      for(int j=0;j<10;j++)
       {
        if(num[k]<num[j])
         {
          min=num[k];
         }
        else if(num[k]>num[j])
        break;
       }
     }
     cout<<"The minimum number is "<<min<<endl;
}
