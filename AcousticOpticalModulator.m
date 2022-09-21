OutputPort1 = InputPort1;
t = mod(InputPort1.Sampled.Time, Period);
if Invert
    f = t <= Duration/1000000;
else
    f = t > 50/1000000;
end
s = size(InputPort1.Sampled.Signal);
for i = 1:s(1)
    OutputPort1.Sampled.Signal(i, :) = InputPort1.Sampled.Signal(i, :).* f;
end
OutputPort1.Sampled.CentralFrequency = InputPort1.Sampled.CentralFrequency + FrequencyShift * 10^6;