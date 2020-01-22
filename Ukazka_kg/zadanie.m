clear;
clc;
all_drawings();

h11 = text([0.37],[1.35], strcat('Sensor1: ', 'None'))
h12 = text([0.37],[1.28], strcat('Sensor1: ', 'None'))
h11.FontSize = 30;
h12.FontSize = 30;
h21 = text([1.35],[1.35], strcat('Sensor2: ', 'None'))
h22 = text([1.35],[1.28], strcat('Sensor2: ', 'None'))
h21.FontSize = 30;
h22.FontSize = 30;
h31 = text([0.85],[0.47], strcat('Sensor3: ', 'None'))
h32 = text([0.85],[0.4], strcat('Sensor3: ', 'None'))
h31.FontSize = 30;
h32.FontSize = 30;
h41 = text([0.75],[2.12], strcat('Sensor4: ', 'None'))
h42 = text([0.7],[2.05], strcat('Sensor4: ', 'None'))
h41.FontSize = 30;
h42.FontSize = 30;

counter = 1;
b=Bluetooth('HC-05',1);
fopen(b);
'cakam na data'
fprintf(b,'%d','1');
while counter < 2001
Bluetooth_Read1(counter)=str2num(fgetl(b));
if (Bluetooth_Read1(counter)<=8000000)
    Bluetooth_Read1(counter)=Bluetooth_Read1(counter)*10;
end
Bluetooth_Read1(counter)= mapfun(Bluetooth_Read1(counter),8348000,16777250,0,20)

% Bluetooth_Read2(counter)=str2num(fgetl(b));
% if (Bluetooth_Read2(counter)<=8000000)
%     Bluetooth_Read2(counter)=Bluetooth_Read2(counter)*10;
% end
% Bluetooth_Read2(counter)= mapfun(Bluetooth_Read2(counter),8348000,16777250,0,20);
% 
% Bluetooth_Read3(counter)=str2num(fgetl(b));
% if (Bluetooth_Read3(counter)<=8000000)
%     Bluetooth_Read3(counter)=Bluetooth_Read3(counter)*10;
% Bluetooth_Read3(counter)= mapfun(Bluetooth_Read3(counter),8348000,16777250,0,20);
% 
% Bluetooth_Read4(counter)=str2num(fgetl(b));
% end
Bluetooth_Read2(counter)=0;
Bluetooth_Read3(counter)=0;
Bluetooth_Read4(counter)=0;
Hodnota(counter)=counter;
set(h11,'String', strcat('Sensor 1'));
set(h12,'String', strcat(num2str(Bluetooth_Read1(counter))));
set(h21,'String', strcat('Sensor 2'));
set(h22,'String', strcat(num2str(Bluetooth_Read2(counter))));
set(h31,'String', strcat('Sensor 3'));
set(h32,'String', strcat(num2str(Bluetooth_Read3(counter))));
set(h41,'String', strcat('uhlová rýchlos»'));
set(h42,'String', strcat(num2str(Bluetooth_Read4(counter)),' km/h = ',((num2str((Bluetooth_Read4(counter))/94*100))),' RPM'));
counter=counter+1;
drawnow;
end

fclose(b);
'vsetko zbehlo ok'
%plot(Hodnota,Bluetooth_Read)