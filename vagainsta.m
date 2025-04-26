hold on
m= 0.55;
g= 9.81;
k= 0.64861168;
xlabel("Initial Velocity (m/s)");
ylabel("Optimal Angle (°)");
set(gca, "linewidth", 1, "fontsize", 35)
xlim([0 30])
set(gca,'XTick',0:5:90)
ylim([0 50])
set(gca,'XTick',0:5:50)
for v= 1:1:30
  q= 0;
  for a = 22:0.2:45   #middle is step size
  x = 0;
  y = 0;
    do
    x = (x + 0.05);
    y = ((-m)/k^2)*((k*v*sind(a)+m*g)*((-k*x)/(m*v*cosd(a))+1)+(m*g)*(log((m*v*cosd(a))/((-k*x)+(m*v*cosd(a))))-1)-(k*v*sind(a)));
    fprintf("%d,%d,%d,%d\n",v,a,x,y)
    until(y <= 0)
    if (x > q)
    q = x   #q is largest range
    i = a   #i is angle of largest range
    endif
  endfor
  plot(v,i,"-x", "color", "b","markersize", 10)
endfor



