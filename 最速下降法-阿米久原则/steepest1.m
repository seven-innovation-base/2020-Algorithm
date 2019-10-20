function [ tk ] = steepest1( t0,eps )
% Github : https://github.com/liferjane/Steepest-descent-algorithm-Matlab-
% 最速下降法主函数
% 初值：t0，精度要求，迭代终止的条件：eps


k=0;kmax=5000; % 迭代次数k，最大迭代次数kmax

while(k<kmax)
    
    gk=fun_grad1(t0); % 计算梯度
    
    if(abs(gk)<eps) % 判断是否符合精度要求 
        
       tk=t0; 
       
       disp(tk);return; %tk即为所求极值点
       
    else
        
        dk=-gk; %下降方向为导数符值
        
        alpha=armijo1(t0); % 找到步长因子
        
        t0=t0+alpha*dk; % 计算新的一点
        
        k=k+1; 
        
    end
    
end
tk=t0; disp('达到最大搜索次数，但还未达到精度');

end

