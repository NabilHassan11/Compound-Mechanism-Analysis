close
clc
i=1;
options = optimset('display', 'off');
omega_2 = 15;
% theta34 = zeros(2,361);
% theta56 = zeros(2,361);
% x = zeros(1,361);
for theta=0:1:360
x(i)=theta;
theta34(:,i)=fsolve(@Position1,[27*pi/180 38*pi/180],options,theta)*180/pi;
i=i+1;
end

for i=1:1:361
theta56(:,i)=fsolve(@Position2,[220*pi/180 100*pi/180],options,[theta34(1,i),theta34(2,i)])*180/pi;
i=i+1;
end

i=1;
for theta=0:1:360
omega34(:,i)=fsolve(@Omega1,[0 0],options,[omega_2,theta,theta34(1,i),theta34(2,i)]);
i=i+1;
end

for i=1:1:361
omega56(:,i)=fsolve(@Omega2,[0 0],options,[omega34(1,i),omega34(2,i),theta34(1,i), ...
    theta34(2,i),theta56(1,i),theta56(2,i)]);
i=i+1;
end

i=1;
for theta=0:1:360
alpha34(:,i)=fsolve(@Alpha1,[0 0],options,[omega_2,theta,theta34(1,i),theta34(2,i), ...
    omega34(1,i),omega34(2,i)]);
i=i+1;
end

for i=1:1:361
alpha56(:,i)=fsolve(@Alpha2,[0 0],options,[omega56(1,i),omega56(2,i),theta56(1,i), ...
    theta56(2,i),theta34(1,i),theta34(2,i),omega34(1,i),omega34(2,i), ...
    alpha34(1,i),alpha34(2,i)]);
i=i+1;
end

% theta3
nexttile;
plot(x(1,:),theta34(1,:))
xlabel('Theta2');
ylabel('Theta3');
grid;
hold;
% omega3
nexttile;
plot(x(1,:),omega34(1,:))
xlabel('Theta2');
ylabel('Omega3');
grid;
hold;
% alpha3
nexttile;
plot(x(1,:),alpha34(1,:))
xlabel('Theta2');
ylabel('Alpha3');
grid;
hold;

%theta4
nexttile;
plot(x(1,:),theta34(2,:))
xlabel('Theta2');
ylabel('Theta4');
grid;
hold;
%omega4
nexttile;
plot(x(1,:),omega34(2,:))
xlabel('Theta2');
ylabel('Omega4');
grid;
hold;
% alpha4
nexttile;
plot(x(1,:),alpha34(2,:))
xlabel('Theta2');
ylabel('Alpha4');
grid;
hold;

% theta5
nexttile;
plot(x(1,:),theta56(1,:))
xlabel('Theta2');
ylabel('Theta5');
grid;
hold;
%omega5
nexttile;
plot(x(1,:),omega56(1,:))
xlabel('Theta2');
ylabel('Omega5');
grid;
hold;
%alpha5
nexttile;
plot(x(1,:),alpha56(1,:))
xlabel('Theta2');
ylabel('Alpha5');
grid;
hold;

%theta6
nexttile;
plot(x(1,:),theta56(2,:))
xlabel('Theta2');
ylabel('Theta6');
grid;
hold;
%omega6
nexttile;
plot(x(1,:),omega56(2,:))
xlabel('Theta2');
ylabel('Omega6');
grid;
hold;
%alpha6
nexttile;
plot(x(1,:),alpha56(2,:))
xlabel('Theta2');
ylabel('Alpha6');
grid;
hold;
