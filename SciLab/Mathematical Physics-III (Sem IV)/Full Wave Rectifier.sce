// Define the input voltage, load resistance, and diode parameters
Vin = 10;     // Input voltage (peak-to-peak)
Rload = 100;  // Load resistance
Is = 1e-14;   // Saturation current
Vt = 0.025;   // Thermal voltage
eta = 1;      // Emission coefficient

// Define the time vector
t = 0:0.001:1;  // Time vector (from 0 to 20 ms with a step of 0.0001 ms)
disp(size(t))
// Define the diode voltage vectors
Vd1 = zeros(1,length(t))
Vd2 = zeros(1,length(t))

// Calculate the diode voltages
for i=1:length(t)
    Vd1(i) = Vin*sin(50*t(i))
    Vd2(i) = -Vin*sin(50*t(i))
    
    // First diode
    if Vd1(i) < 0
        Vd1(i) = 0  // Reverse bias condition
    else
        Vd1(i) = Vd1(i) - eta*Vt*log(1+(Is*Rload)/(Vd1(i)+Is*Rload))  // Forward bias condition
    end
    
    // Second diode
    if Vd2(i) < 0
        Vd2(i) = 0  // Reverse bias condition
    else
        Vd2(i) = Vd2(i) - eta*Vt*log(1+(Is*Rload)/(Vd2(i)+Is*Rload));  // Forward bias condition
    end
end

// Calculate the output voltage
Vout = abs(Vd1) + abs(Vd2)  // Output voltage is the sum of the absolute values of the two diode voltages

// Plot the input and output voltages
clf;
subplot(2,1,1)
plot(t,Vin*sin(50*t),'b')
title('Input Voltage')
xlabel('Time (s)')
ylabel('Voltage (V)')
subplot(2,1,2)
plot(t,Vout,'r')
title('Output Voltage')
xlabel('Time (s)')
ylabel('Voltage (V)')
