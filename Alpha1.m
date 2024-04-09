function eqn = Alpha1(output,input)
omega2 = input(1);
theta2 = input(2);
theta3 = input(3);
theta4 = input(4);
omega3 = input(5);
omega4 = input(6);
alpha3 = output(1);
alpha4 = output(2);
r1 = 58.454;
r2 = 33;
r3 = 57.092;
r4 = 36.401;
eqn = [(-(omega2^2)*r2*cos(theta2*pi/180) - (omega3^2)*r3*cos(theta3*pi/180) ...
    -alpha3*r3*sin(theta3*pi/180) + (omega4^2)*r4*cos(theta4*pi/180)+ ...
    alpha4*r4*sin(theta4*pi/180));

 (-(omega2^2)*r2*sin(theta2*pi/180) - (omega3^2)*r3*sin(theta3*pi/180) ...
    +alpha3*r3*cos(theta3*pi/180) + (omega4^2)*r4*sin(theta4*pi/180)- ...
    alpha4*r4*cos(theta4*pi/180));];
end