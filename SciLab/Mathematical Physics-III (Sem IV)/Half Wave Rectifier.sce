// Define the input voltage and the load resistance
Vin = 5;    
Rload = 100;

// Define the time vector
t = 0:0.0001:0.5

// Define the diode model
Is = 1e-14;   // Saturation current
Vt = 0.025;   // Thermal voltage
eta = 1;      // Emission coefficient
Vd = zeros(1,length(t));  // Diode voltage (initially set to zero)

// Calculate the diode voltage
for i=1:length(t)
    Vd(i) = Vin*sin(50*t(i));  // Input voltage
    if Vd(i) < 0
        Vd(i) = 0;  // Reverse bias condition
    else
        Vd(i) = Vd(i) - eta*Vt*log(1+(Is*Rload)/(Vd(i)+Is*Rload));  // Forward bias condition
    end
end

// Plot the input and output voltages
clf;

subplot(2,1,1)
plot(t,Vin*sin(50*t),'b')
title('Input Voltage')
xlabel('Time (s)')
ylabel('Voltage (V)')

subplot(2,1,2)
plot(t,Vd,'r')
title('Output Voltage')
xlabel('Time (s)')
ylabel('Voltage (V)')
