function changeX = xdot(x, y, z, epsilon, phi, mu)
fx = fitnessx(x, y, epsilon);
changeX = x*(fx - phi) + mu*(-2*x + y + z);

end

function a = fitnessx(x, y, epsilon)
    a = 1 - x - y*(epsilon + 2);
end