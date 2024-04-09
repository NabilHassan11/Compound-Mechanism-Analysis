function eqn = Position2(output,input)
theta3_ = input(1) - 180 - 23;
theta4 = input(2);
theta5 = output(1);
theta6 = output(2);
r4 = 36.401;
r5 = 55.665;
r6 = 61.712;
r3_= 47.606;
r1_= 33.724;
eqn = [
    (r4*cos(theta4*pi/180) + r3_*cos(theta3_*pi/180) ...
    - r5*cos(theta5) -r6*cos(theta6)-r1_);
    (r4*sin(theta4*pi/180) + r3_*sin(theta3_*pi/180) ...
    - r5*sin(theta5) -r6*sin(theta6));
    ];
end