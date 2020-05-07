function  f = eta_square( Z,N )
%calculate a measure of effect size for the Mann-Whitney U statistic. 
%It's essentially based on eta-squared. 
%  ?2= Z2/(N-1)
    f =(Z^2) /  (N-1)

end

