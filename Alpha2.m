function eqn = Alpha2(output,input)
omega5 = input(1);
omega6 = input(2);
theta5 = input(3);
theta6 = input(4);
theta4 = input(6);
theta3_ = input(5) - 180 -23;
omega3 = input(7);
omega4 = input(8);
alpha3 = input(9);
alpha4 = input(10);
alpha5 = output(1);
alpha6 = output(2);
r4 = 36.401;
r5 = 55.665;
r6 = 61.712;
r3_= 47.606;
r1_= 33.724;
eqn = [(-(omega4^2)*r4*cos(theta4*pi/180) - (omega3^2)*r3_*cos(theta3_*pi/180) ...
    -alpha3*r3_*sin(theta3_*pi/180)-alpha4*r4*sin(theta4*pi/180) ...
    + (omega5^2)*r5*cos(theta5*pi/180)+alpha5*r5*sin(theta5*pi/180) ...
    + (omega6^2)*r6*cos(theta6*pi/180)+alpha6*r6*sin(theta6*pi/180));

 (-(omega4^2)*r4*sin(theta4*pi/180) - (omega3^2)*r3_*sin(theta3_*pi/180) ...
    +alpha3*r3_*cos(theta3_*pi/180)+alpha4*r4*cos(theta4*pi/180) ...
    + (omega5^2)*r5*sin(theta5*pi/180)-alpha5*r5*cos(theta5*pi/180) ...
    + (omega6^2)*r6*sin(theta6*pi/180)-alpha6*r6*cos(theta6*pi/180));];
end