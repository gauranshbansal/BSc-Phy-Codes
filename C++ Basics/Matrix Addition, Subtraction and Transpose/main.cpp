#include <iostream>

using namespace std;

int main()
{
    int arr[2][2]={1,2,3,4},i,j,c,r;
    for(i=0;i<2;i++){
        for(j=0;j<2;j++){
            cout<<arr[i][j]<<" ";
        }
        cout<<endl;
    }
    cout<<"\n Enter number of rows and columns : \n"<<endl;
    cin>>r>>c;
    int matA[r][c],matB[r][c];
    cout<<"\n Enter the entries of matrix A row-wise.\n"<<endl;
    for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<"Enter matA["<<i<<"]["<<j<<"] : ";
            cin>>matA[i][j];
        }
    }
    cout<<"\nEnter the entries of matrixB row-wise.\n"<<endl;
    for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<"Enter mat B["<<i<<"]["<<j<<"] : ";
            cin>>matB[i][j];
        }
    }
    //print
    cout<<"\n Entered matrices are : \n"<<endl;
    cout<<"matrix A(matA) : "<<endl;
     for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<matA[i][j]<<" ";
        }
        cout<<endl;
    }
    cout<<endl;
    cout<<"matrix B(matB) : "<<endl;
     for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<matB[i][j]<<" ";
        }
        cout<<endl;
    }
    cout<<endl;
    //sum of matrices
    cout<<"\n Sum of matrix A and matrix B.\n"<<endl;
    for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<matA[i][j]+matB[i][j]<<" ";
        }
        cout<<endl;
    }
    cout<<endl;
    //subtraction of matrices
    cout<<"\n Difference between matrix A and matrix B.\n"<<endl;
    for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<matA[i][j]-matB[i][j]<<" ";
        }
        cout<<endl;
    }
    cout<<endl;
    //access any row of matrix1
    int k;
    cout<<"\n Enter the row of matA to access : \n";
    cin>>k;
    for(j=0;j<c;j++){
        cout<<"matA["<<k-1<<"]["<<j<<"] : "<<matA[k-1][j]<<endl;
    }
    //transpose 
    int transpose1[r][c], transpose2[r][c];
    cout<<"Transpose of matrixA and matrixB respectively are : "<<endl;
    for(i=0;i<r;i++){
    	for(j=0;j<c;j++){
    		transpose1[j][i]=matA[i][j];
    		transpose2[j][i]=matB[i][j];
    	}
    }
	cout<<"\n matA transpose : "<<endl;
	 for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<transpose1[i][j]<<" ";
        }
        cout<<endl;
    }
	cout<<"\n matB transpose : "<<endl;
	 for(i=0;i<r;i++){
        for(j=0;j<c;j++){
            cout<<transpose2[i][j]<<" ";
        }
        cout<<endl;
    }
    return 0;
}
