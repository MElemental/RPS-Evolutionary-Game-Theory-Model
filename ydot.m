function changeY = ydot(x, y, z, epsilon, phi, mu)
    fy = fitnessy(x, y, epsilon);
    changeY = y*(fy - phi) + mu*(-2*y + x + z);
end

function a = fitnessy(x, y, epsilon)
    a = (epsilon + 2)*x + (epsilon + 1)*(y - 1);
end