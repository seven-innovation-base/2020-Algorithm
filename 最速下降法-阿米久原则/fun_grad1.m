function [ gk ] = fun_grad1( t0 )
%求解函数fun1的梯度（导数）

syms t
gk = subs(diff(fun1(t)),t,t0); 
% subs函数:https://zhidao.baidu.com/question/471116062.html
end

