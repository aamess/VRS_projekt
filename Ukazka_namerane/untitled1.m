clc
clear
figure(2);
load('matlab.mat');
load('matlab1.mat');
tiledlayout(4,1)
nexttile
plot(data.cas(:,:),data.snimac_1(:,:))
xlabel('cas (sek)') 
ylabel('zmeraná hodnota') 
title('Data zo snimaca cislo 1')
nexttile
plot(data.cas(:,:),data.snimac_2(:,:))
xlabel('cas (sek)') 
ylabel('zmeraná hodnota')
title('Data zo snimaca cislo 2')
nexttile
plot(data.cas(:,:),data.snimac_3(:,:))
xlabel('cas (sek)') 
ylabel('zmeraná hodnota')
title('Data zo snimaca cislo 3')
 nexttile
 plot(data.cas(:,:),Bluetooth_Read1(:,:))
 xlabel('cas (sek)') 
ylabel('rýhlost (km/h)')
  title('rýchlost vozidla')
