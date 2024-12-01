A=[1 2 4]
B=[3 5 -1]

//addition
C=A+B
disp(C)

//subtraction
D=A-B
disp(D)

//multipication
E=A.*B
disp(E)

//division
F=A./B
disp(F)

//Accessing the element
mat=[1 4 6;3 5 7; 3 4 6]
disp(mat)
G=mat(2,3)
disp(G)

//All elements of a row
H=mat(2,:)
//disp(H)

//All elements of a column
I=mat(:,3)
//disp(I)

//submatrix
J=mat(2:3,2:3)
disp(J)

//last row elements
K=mat($,:)
disp(K)

//size of a matrix
[r,c]=size(mat)
disp(r)
disp(c)

//determinant of a matrix
L=det(mat)
disp(L)

//inverse of a matrix
M=inv(mat)
disp(M)

//transpose
N=mat'
disp(N)

//eigenvalues and eigenvectors
O=spec(mat)
disp(O)

//random matrix
P=rand(4,5)
disp(P)

//diagonal elements
Q=diag(mat)
disp(Q)
