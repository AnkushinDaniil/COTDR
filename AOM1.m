OutputPort1 = InputPort1;
t = mod(InputPort1.Sampled(Parameter0).Time, 12/1000);
f = t > 50/1000000;
OutputPort1.Sampled = InputPort1.Sampled(Parameter0);
OutputPort1.Sampled.Signal = InputPort1.Sampled(Parameter0).Signal .* f;
OutputPort1.Sampled.CentralFrequency = InputPort1.Sampled(Parameter0).CentralFrequency + 150 * 10^6;