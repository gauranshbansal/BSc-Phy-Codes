#include <iostream>

using namespace std;

int main()
{
    cout << "This is newton's forward interpolation method \n \n" << endl;
    int n,m;
    cout<<"Please enter the number of rows and columns"<<endl;
    cin>>n>>m;
    float mat[n][m];
    cout<<"Please enter the values of X \n";
    for (int i=0;i<n;i++){
        cin>>mat[i][0];
    }
    cout<<"Please enter the values of Y \n";
    for (int i=0;i<n;i++){
        cin>>mat[i][1];
    }
    cout<<"\n";
    //printing table for reference
    cout<<"Table for reference- \n";
    cout<<"X Y \n";
    for(int i=0;i<n;i++){
        for(int j=0;j<m;j++){
            cout<<mat[i][j]<<" ";
            }
            cout<<endl;
    }
    //Difference Table
    float matdif[n-1][1];
    for(int i=0;i<n;i++){
        matdif[i][0]=mat[i+1][1]-mat[i][1];
    }
    cout<<"\n";
    //print difference table
    cout<<"The first difference table is- \n";
    cout<<"dx \n";
    for(int i=0;i<n-1;i++){
            cout<<matdif[i][0]<<endl;
    }
    //Difference Table 2
    float matdif2[n-2][1];
    for(int i=0;i<n-2;i++){
        matdif2[i][0]=matdif[i+1][0]-matdif[i][0];
    }
    cout<<"\n";
    //print difference table 2
    cout<<"The second difference table is- \n";
    cout<<"d2x \n";
    for(int i=0;i<n-2;i++){
            cout<<matdif2[i][0]<<endl;
    }
    //Difference Table 3
    float matdif3[n-3][1];
    for(int i=0;i<n-3;i++){
        matdif3[i][0]=matdif2[i+1][0]-matdif2[i][0];
    }
    cout<<"\n";
    //print difference table 3
    cout<<"The third difference table is- \n";
    cout<<"d3x \n";
    for(int i=0;i<n-3;i++){
            cout<<matdif3[i][0]<<endl;
    }


    return 0;
}
