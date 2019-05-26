function p = phi(x, y, z, epsilon)
% PHI This function calculates the fitness function of x_1(x), x_2(y), and x_3(z).
%   fitness functions derived from the Payoff matrix in Toupo and Strogatz 2015.
%   Called by the xdot and ydot functions.
    fitnessX = -(epsilon + 1)*y + 1*z;
    fitnessY = 1*x + -(epsilon + 1)*z;
    fitnessZ = -(epsilon + 1)*x + y;
    
    p = fitnessX*x + fitnessY*y + fitnessZ*z;
end
