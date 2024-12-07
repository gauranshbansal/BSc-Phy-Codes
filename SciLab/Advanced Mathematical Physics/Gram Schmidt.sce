//The Matrix
    mat = [1 1 0; 1 0 1; 0 1 1]
    [n,s]=size(mat)
    for i = 1:n
        a{i} = mat(i, :)'
        disp(a{i})
    end
//Inititalizing
    u{1}=a{1}
    e{1}=u{1}./norm(u{1},2)
//Loop
    for i=1:n-1
        summ=((a{i+1}'*(e{i}))*(e{i}))
        for j=i-1:-1:1
            if (j>=1) then
            summ=summ+((a{i+1}'*(e{j}))*(e{j}))
            end
        end
        u{i+1}=a{i+1}-summ
        e{i+1}=u{i+1}/norm(u{i+1},2)
    end
Q=[e{1} e{2} e{3}]
disp(Y)
for j=1:3
 for i=1:3
     X(i,j)=(a{j}')*e{i}
 end
end
R=triu(X)
disp(Q,R,(Q*R)')

