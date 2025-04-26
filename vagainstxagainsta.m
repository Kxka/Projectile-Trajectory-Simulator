clf
hold on
m= 0.55;
g= 9.81;
k= 1.2;
xlabel("velocity");
ylabel("angle");
zlabel("range");
set(gca, "linewidth", 1, "fontsize", 35)
for v= 1:1:50
  for a = 1:1:89   #middle is step size
  x = 0;
  y = 0;
    do
    x = (x + 0.1);
    y = ((-m)/k^2)*((k*v*sind(a)+m*g)*((-k*x)/(m*v*cosd(a))+1)+(m*g)*(log((m*v*cosd(a))/((-k*x)+(m*v*cosd(a))))-1)-(k*v*sind(a)));
    fprintf("%d,%d,%d,%d\n",v,a,x,y)
    until(y <= 0)
    scatter3(v,a,x,10,x,"filled")
  endfor
endfor
hold off
