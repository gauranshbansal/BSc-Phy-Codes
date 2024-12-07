// program to find probability of microstates
clc;clear
N=input("Number of sets of observations you want :")
for i=1:N
    n=input("Enter the number of coins tossed :")
    outcomes=2^n
    disp("n(h)  p(h)")
    for j=0:1:n
        nk=factorial(n)/(factorial(j)*factorial(n-j))
        p(j+1)=nk/outcomes
        h(j+1)=j
        disp([h(j+1) p(j+1)])
    end
    subplot(1,N,i)
    plot(h,p,'o-','linewidth',4)
    title("Number of Coins:"+string(n),'fontsize',6)
    xlabel("Number of Heads N(H)",'fontsize',6)
    ylabel("Probability P(H)",'fontsize',6)
end
