%this code is just for reference, change anyway to get different diagram

%%
figure
plot(enu(:,1),enu(:,2),'*'),grid
axis square;axis equal
title('EN position');
ylabel('north(m)');
xlabel('east(m)');

figure
subplot(2,2,1)
plot(1:size(Rcvr,1),enu(:,1)),grid
title('east versus time');
ylabel('east(m)');
xlabel('epoch');
xlim([0 size(enu,1)]);
subplot(2,2,2)
plot(1:size(Rcvr,1),enu(:,2)),grid
title('north versus time');
ylabel('north(m)');
xlabel('epoch');
xlim([0 size(enu,1)]);
subplot(2,2,3)
plot(1:size(Rcvr,1),enu(:,3)),grid
title('height versus time');
ylabel('height(m)');
xlabel('epoch');
xlim([0 size(enu,1)]);

figure 
plot(1:size(enu,1),r_xyzb(:,4));
title('user clock bias versus time');
ylabel('user clock bias');
xlabel('epoch');
