A=[2 5]
B=[3 4]
C=A+B
disp(C)
thet=(A*B')/(norm(A)*norm(B))
th=acos(thet)
alpha=atan((norm(A)*sin(th))/(norm(B)+norm(A)*cos(th)))
disp(alpha)
