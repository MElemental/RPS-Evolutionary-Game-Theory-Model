function p = phi(x, y, z, epsilon)
    fitnessX = -(epsilon + 1)*y + 1*z;
    fitnessY = 1*x + -(epsilon + 1)*z;
    fitnessZ = -(epsilon + 1)*x + y;
    
    p = fitnessX*x + fitnessY*y + fitnessZ*z;
end