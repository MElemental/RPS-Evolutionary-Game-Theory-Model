function p = phi(x, y, z, epsilon)
% PHI This function calculates the fitness function of x_1(x), x_2(y), and x_3(z).
%   x, y, and z refer to to population densities.
%   epsilon refers to the magnitude of loss in a non-zero sum game.
%   fitness functions derived from the payoff matrix in Toupo and Strogatz 2015.
%   p refers to the wighted average of the funtions, phi.
%   Called by the systems of differential equations, xdot and ydot, functions.
    fitnessX = -(epsilon + 1)*y + 1*z;
    fitnessY = 1*x + -(epsilon + 1)*z;
    fitnessZ = -(epsilon + 1)*x + y;
    
    p = fitnessX*x + fitnessY*y + fitnessZ*z;
end
