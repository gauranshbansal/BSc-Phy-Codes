#include <iostream>

using namespace std;

int main()
{
    cout << "Newton's Forward Interpolation \n \n";
    int n,m;
    cout<<"Enter total rows and columns seperated by a space \n";
    cin>>n>>m;
    float matrix[n][m];
    printf("Enter the values of X \n");
    for(int i=0; i<n; i++){
        cin>>matrix[i][0];
        }
    printf("Enter the value of Y \n");
    for(int i=0; i<n; i++)
        {cin>>matrix[i][1];
        }
//Printing table for reference
    printf("The table formed is as follows: \n");
    for(int  i=0; i<n; i++){
        for(int j=0; j<2; j++){
         cout<<matrix[i][j]<<" ";
        }
     cout<<" \n";
    }
//Difference table
    int i;
    for (int j=2;j<n+1; j++){
      for(int i=0;i<n-j+1;i++){
        matrix[i][j]=matrix[i+1][j-1]-matrix[i][j-1];
      }
    }
//Print Difference Table
     printf("The difference table formed is as follows: \n");
     for(int i=0;i<n;i++){
      for(int j=0;j<=n-i;j++){
        cout<<matrix[i][j]<<" ";
        }
     cout<<" \n";
    }
//Find r
    float r,x,rprime,y;
    int fact;
    cout<<"Enter the value to be interpolated  \n";
    cin>>x;
    fact=1;
    r=(x-matrix[0][0])/(matrix[1][0]-matrix[0][0]);
    rprime=r;
    y=matrix[0][1];
    for(int i=2;i<=n;i++){
       //calculate y
       y=y+(rprime*matrix[0][i])/fact;
       //Update fact, rprime
       fact=fact*i;
       rprime=rprime*(r-(i-1));

    }
    cout<<"\n\n Value at X="<<x<<" is = "<<y<<endl;
    return 0;
}
