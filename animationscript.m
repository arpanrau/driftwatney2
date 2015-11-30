function animationscript(L1,L2,T,Y,M1,M2)

%Animates ode45 double pendulum implementation
%Accepts Length of first leg, length of 2nd leg,
%ode45 time output, ode45 position outputs

%Calculates X and Y position vectors based on ode45 output

x1 = L1*sin(Y(:,1));
x2 = L1*sin(Y(:,1))+L2*sin(Y(:,2));
y1 = -L1*cos(Y(:,1));
y2 = -L1*cos(Y(:,1))-L2*cos(Y(:,2));

for i = 1:length(T)
    clf;
    axis([-(L1 + L2), L1+L2, -(L1+L2),L1+L2])
    hold on;
    plot(x1(i), y1(i), 'r.', 'MarkerSize', M1*10);
    plot(x2(i), y2(i), 'b.', 'MarkerSize', M2*10);
    plot([0 x1(i)], [0 y1(i)], 'r');
    plot([x1(i) x2(i)], [y1(i) y2(i)], 'b');
    drawnow
end
end
    
