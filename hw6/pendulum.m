function T = pendulum(L, a0)
ang_acc = 0; w = 0; t = 0; theta = a0; delta = 1e-6;

if L == 0 || a0 == 0;
    T = 0;
    return;
end
while theta >= 0
ang_acc = (9.8 * sin(theta)) / L;
w = w + ang_acc * delta;
theta = theta - (w * delta);
t = t + delta;
end

T = t * 4;