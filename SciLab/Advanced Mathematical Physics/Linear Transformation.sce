////Defining reflection transformation matrix
rx=[1 0;0 -1]
ry=[-1 0;0 1]
r1=[0 1;1 0]
r2=[-1 0;0 -1]
r3=[3 3;3 3;3 3;3 3]
theta=%pi/6
r4=[cos(theta) sin(theta);-sin(theta) cos(theta)]
theta2=45*%pi/180
r5=[cos(theta2) sin(theta2);-sin(theta2) cos(theta2)]
//Reflection of the triangle across X
X=[2,2,4,2]
Y=[1,4,2,1] 
B=[X',Y']
C=B*rx
Xnew=[C(:,1)]
Ynew=[C(:,2)]
disp(Xnew,Ynew)

//Reflection Graph
subplot(3,3,1)
plot2d(X,Y,)
xtitle("Reflection across X")
plot2d(Xnew,Ynew,3)
xgrid(2)

//Reflection of the triangle across Y
X=[2,2,4,2]
Y=[1,4,2,1]
B=[X',Y']
C=B*ry
Xnew=[C(:,1)]
Ynew=[C(:,2)]
disp(Xnew,Ynew)

//Reflection Graph
subplot(3,3,2)
plot2d(X,Y,1)
xtitle("Reflection across Y")
plot2d(Xnew,Ynew,3)
xgrid(2)

//Reflection about line y=x
X=[2,2,4,2]
Y=[1,4,2,1]
B=[X',Y']
C=B*r1
Xnew=[C(:,1)]
Ynew=[C(:,2)]
disp(Xnew,Ynew)

//Reflection Graph
subplot(3,3,3)
plot2d(X,Y,5)
xtitle("Reflection across line y=x")
plot2d(Xnew,Ynew,3)
x=[1:5]
y=x
plot2d(x,y,4)
xgrid(2)

//Reflection about line y=x
X=[2,2,4,2]
Y=[1,4,2,1]
B=[X',Y']
C=B*r2
Xnew=[C(:,1)]
Ynew=[C(:,2)]
disp(Xnew,Ynew)

//Reflection Graph
subplot(3,3,4)
plot2d(X,Y,1)
xtitle("Reflection about origin")
plot2d(Xnew,Ynew,3)
xgrid(2)

//Reflection about origin
X=[2,2,4,2]
Y=[1,4,2,1]
B=[X',Y']
C=B+r3
Xnew=[C(:,1)]
Ynew=[C(:,2)]
disp(Xnew,Ynew)

//Reflection Graph
subplot(3,3,5)
plot2d(X,Y,1)
xtitle("Translation")
plot2d(Xnew,Ynew,3)
xgrid(2)

//Translation
X=[2,2,4,2]
Y=[1,4,2,1]
B=[X',Y']
C=B*r4
Xnew=[C(:,1)]
Ynew=[C(:,2)]
disp(Xnew,Ynew)

//Reflection Graph
subplot(3,3,6)
plot2d(X,Y,1)
xtitle("Rotation by 30 deg")
plot2d(Xnew,Ynew,3)
xgrid(2)

//Rotate
X=[2,2,4,2]
Y=[1,4,2,1]
B=[X',Y']
C=B*r5
Xnew=[C(:,1)]
Ynew=[C(:,2)]
disp(Xnew,Ynew)

//Reflection Graph
subplot(3,3,7)
plot2d(X,Y,1)
xtitle("Rotate by 45 deg")
plot2d(Xnew,Ynew,3)
xgrid(2)

// Scaling the circle
radius = 1
theta = linspace(0, 2*%pi, 100)
X_circle = radius * cos(theta)
Y_circle = radius * sin(theta)

r7 = [2, 0; 0, 3]
// Apply scaling transformation to the circle
B_circle = [X_circle', Y_circle'];
C_circle = B_circle*r7;
X_scaled = C_circle(:,1);
Y_scaled = C_circle(:,2);

// Circle Graph
subplot(3,3,8)
plot2d(X_circle, Y_circle, 1)
plot2d(X_scaled, Y_scaled, 3)
xtitle("Scaled Circle")
xgrid(2)

//Shearing
X=[2,-2,-2,2,2]
Y=[2,2,0,0,2]
r8 = [1, 1; 0, 1]
B_rect = [X', Y'];
C_rect = B_rect * r8
X_sheared = C_rect(:,1)
Y_sheared = C_rect(:,2)

subplot(3,3,9)
plot2d(X,Y,1)
xgrid(2)
plot2d(X_sheared, Y_sheared,3)
xtitle("Sheared Rectangle")
