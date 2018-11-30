x = 0;
y = 0.8;
z = 0.2;

epsilon = 1;
mu = 0.1;

n = 0;

transformMatrix = [1 0.5; 0 sqrt(3)/2];
initial = [x; y;];
initialPoints = transformMatrix*initial;

plot(initialPoints(1,1), initialPoints(2,1), '.')
hold on

xMax = transformMatrix*[1.0;0;];
yMax = transformMatrix*[0; 1.0;];
zMax = transformMatrix*[0;0;];

line([zMax(1,1),yMax(1,1)], [zMax(2,1), yMax(2,1)], 'Color', 'b')
line([zMax(1,1), xMax(1,1)], [zMax(2,1), xMax(2,1)], 'Color', 'b')
line([yMax(1,1), xMax(1,1)], [yMax(2,1), xMax(2,1)], 'Color', 'b')

while(n < 30)
   ph = phi(x, y, z, epsilon);
   dX = xdot(x, y, z, epsilon, ph, mu);
   dY = ydot(x, y, z, epsilon, ph, mu);
   
   x = x + dX*(0.01);
   y = y + dY*(0.01);
   z = 1 - x - y;
   
   original = [x; y;];
   

   
   newPoints = transformMatrix * original;
   
   
  
   plot(newPoints(1, 1), newPoints(2, 1), '.')
   
   n = n + 0.01;
end

axis([0 1 0 1])


