function eqn = Position1(output,input)
theta2 = input;
theta3 = output(1);
theta4 = output(2);
r1 = 58.454;
r2 = 33;
r3 = 57.092;
r4 = 36.401;
eqn = [
    (r2*cos(theta2*pi/180) + r3*cos(theta3) - r4*cos(theta4) - r1);
    (r2*sin(theta2*pi/180) + r3*sin(theta3) - r4*sin(theta4));
    ];
end