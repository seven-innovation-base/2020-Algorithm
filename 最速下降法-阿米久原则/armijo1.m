function [ alpha ] = armijo1( t0 )
%用armijo准则搜索合适的步长因子
%if alpha=beta^mmax, the length might be too little,and there would be a hint for users. 


beta=0.5;rho=0.2; %defining the parameters

m=0;mmax=20; 
%m为搜索次数，mmax为最大搜索次数

while(m<=mmax)
    
    gk=fun_grad1(t0); %计算函数fun1在t0处的梯度
    
    
    dk=-gk; %下降方向为导数负值
    
    t1=t0+(beta^m)*dk; %计算下一点的取值

    if(fun1(t1) <= fun1(t0) + rho*(beta^m)*gk*dk')
        %检验m值是否成立
        
       alpha=beta^m;return; 
       %如果成立就输出alpha，结束程序
       
    end
    
    t0=t1; m=m+1;
end

alpha=beta^m;

disp('alpha is already (1/2)^11,the step may be too little');
%进行步长过小的提醒

end

