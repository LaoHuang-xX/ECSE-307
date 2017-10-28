%%Question 1
G = tf([1], [1 6 11 6]);
figure(1)
hold on;
step(G);
stepinfo(G);
figure(2)
rlocus(G);
% 
C_P = pid(40);
open_loop = series(C_P, G);
H1 = feedback(open_loop, 1);
hold on;
figure(1)
step(H1);
stepinfo(H1);
% 
% C_PD = pid(40, 0, 30);
% open_loop_PD = series(C_PD, G);
% H2 = feedback(open_loop_PD, 1);
% hold on;
% figure(1);
% step(H2);
% %stepinfo(H2);
% 
% C_PI = pid(40, 10, 0);
% open_loop_PI = series(C_PI, G);
% H3 = feedback(open_loop_PI, 1);
% hold on;
% figure(1);
% step(H3);
% %stepinfo(H3);
% 
% C_PID = pid(19,12,8);
% open_loop_PID = series(C_PID, G);
% H5 = feedback(open_loop_PID, 1);
% hold on;
% figure(1);
% step(H5);
% stepinfo(H5);
% 
% 
% %%Question 2
% %CHOOSE ONE OF THE OPTIONS BELOW
% opts = pidtuneOptions('DesignFocus', 'disturbance-rejection');
% %opts = pidtuneOptions('DesignFocus', 'reference-tracking');
% %opts = pidtuneOptions('DesignFocus', 'balanced');
% 
% %CHOOSE ONE OF THE OPTIONS BELOW
% %type = 'P';
% %type = 'I';
% %type = 'PI';
% %type = 'PD';
% type = 'PID';
% 
% C_auto = pidtune(G, type, opts);
% open_loop_auto = series(C_auto, G);
% H_auto = feedback(open_loop_auto, 1);
% hold on;
% figure(1);
% step(H_auto);
% %stepinfo(H_auto);
% figure(3)
% bode(G);