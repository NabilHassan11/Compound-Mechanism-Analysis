function eqn = Omega2(output,input)
omega3 = input(1);
omega4 = input(2);
theta3_ = input(3) - 180 -23;
theta4 = input(4);
theta5 = input(5);
theta6 = input(6);
omega5 = output(1);
omega6 = output(2);
r4 = 36.401;
r5 = 55.665;
r6 = 61.712;
r3_= 47.606;
r1_= 33.724;
eqn = [(-omega4*r4*sin(theta4*pi/180) - omega3*r3_*sin(theta3_*pi/180) + omega5*r5*sin(theta5*pi/180) ...
    +omega6*r6*sin(theta6*pi/180));
 (omega4*r4*cos(theta4*pi/180) + omega3*r3_*cos(theta3_*pi/180) - omega5*r5*cos(theta5*pi/180))
 -omega6*r6*sin(theta6*pi/180);
 ];
end