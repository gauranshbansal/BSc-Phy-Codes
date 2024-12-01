A=[2 3 0]
B=[3 5 0]
//dot product
disp(A*B')
theta=(A*B')/(norm(A)*norm(B))
th=acos(theta)
deg=180*th/%pi
disp(deg)
