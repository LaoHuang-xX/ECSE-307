% CHOOSE ONE OF THE OPTIONS BELOW
%opts = pidtuneOptions('DesignFocus', 'disturbance-rejection');
 %opts = pidtuneOptions('DesignFocus', 'reference-tracking');
 opts = pidtuneOptions('DesignFocus', 'balanced');


% CHOOSE ONE OF THE OPTIONS BELOW
%type = 'P';
 %type = 'I';
 type = 'PI';
 %type = 'PD';
%type = 'PID';

G = tf([1],[1,6,11,6]);
C_auto = pidtune(G, type, opts);
open_loop_auto = series(C_auto, G);
H_auto = feedback(open_loop_auto, 1);
hold on;
figure(1);
step(H_auto);
stepinfo(H_auto);