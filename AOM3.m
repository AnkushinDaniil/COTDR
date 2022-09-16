OutputPort1 = InputPort1;
t = mod(InputPort1.Sampled.Time, 12/1000);
f = t <= 50/1000000;
OutputPort1.Sampled.Signal = InputPort1.Sampled.Signal(Parameter0,:) .* f;
OutputPort1.Sampled.CentralFrequency = InputPort1.Sampled.CentralFrequency - 140 * 10^6;