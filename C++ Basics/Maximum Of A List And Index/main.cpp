#include <iostream>

using namespace std;

int main()
{
    cout <<"Enter the number of elements in your list"<< endl;
    int n;
    cin>>n;
    int list[n];
    cout<<" Now enter the numbers of the list- \n";
    for(int i=0; i<n; i++){
        cin>>list[n];
    }
    //maximum and index
    int maxi,ind;
    for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                if(list[i]>list[j]){
                    maxi=list[i];
                    ind=i;
                }
                else if(list[i]<list[j]){
                    break;
                }
                else if(list[i]=list[j]){
                    continue;
                }
            }
    }

    cout<<"The maximum of the provided list is "<<maxi<< " and its index number is "<<ind<<endl;
    return 0;
}
