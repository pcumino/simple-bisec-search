%% sqrtBisec: Bisection search for square root of a number x

function [answer, tries] = sqrtBisec(arg, precision)

	x = arg;
	guess = 0;
	g_low = 0;
	g_hight = x;
	g = (g_low+g_hight)/2;

	while (abs((g.*g)-x)) > precision
		guess = guess+1;
		if (g.*g) > x
			g_hight = g;
		else
			g_low = g;
		end
		g = (g_low+g_hight)/2;
	end

	answer = g;
	tries = guess;

end