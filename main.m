% [x, t] = sqrtBisec(49, .001);
f = 10:2000;
for n = 1:length(f)
	[x(n), t(n)] = sqrtBisec(f(n), .0001);
end

figure('Units','normalized','Position',[0 0 1 1])
plot(f, t, 'o-'); hold on; grid on;

pause();