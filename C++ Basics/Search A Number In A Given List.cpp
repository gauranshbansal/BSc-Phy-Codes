#include <iostream>

using namespace std;

int main()
{
    cout << "This Program Searches The Number In An Entered List \n \n" << endl;
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
       cout<<num[j]<<" "<<endl;
     }
    //Asking for the number to search
     cout<<"Enter the number you want to search-"<<endl;
     int n;
    //Result
     cin>>n;
     for(int k=0;k<10;k++)
      {
       if(n==num[k])
        {
         cout<<"The index number of the entered value in the list is "<<k<<endl;
        }
      }
    return 0;
}
