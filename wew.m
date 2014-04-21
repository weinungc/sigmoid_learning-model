function fn = wew(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x1 =[-1 0 -2 1]';
x2 =[-1 -0.5 -1.5 0]';
x3 =[-1 0.5 -1.5 0.5]';
x4 =[-1 0.5 2 1]';
x5 =[-1.5 -0.5 1.5 -1.5]';
x6 =[2 -0.5 1.5 0.5]';

d1 =1;
d2 =-0.5;
d3 =1.5;
d4 =-1.5;
d5 =1.6;
d6 =2;

    if (n == 1)
		fn = [0 0 0 0]';
	else
		if (rem(n,6) == 1)
			if (wew(n-1)' * x6 <0)
				fn = wew(n-1) + (0.95)^n * (d6 + 1 ) * x6;
			else
				fn = wew(n-1) + (0.95)^n * (d6 - 1 ) * x6;
			end
		end
		if (rem(n,6) == 2)
			if (wew(n-1)' * x1 <0)
				fn = wew(n-1) + (0.95)^n * (d1 + 1 ) * x1;
			else
				fn = wew(n-1) + (0.95)^n * (d1 - 1 ) * x1;
			end
		end
		if (rem(n,6) == 3)
			if (wew(n-1)'*x2 <0)
				fn = wew(n-1) + (0.95)^n * (d2 + 1 ) * x2;
			else
				fn = wew(n-1) + (0.95)^n * (d2 - 1 ) * x2;
			end
		end
		if (rem(n,6) == 4)
			if (wew(n-1)'*x3 <0)
				fn = wew(n-1) + (0.95)^n * (d3 + 1 ) * x3;
			else
				fn = wew(n-1) + (0.95)^n * (d3 - 1 ) * x3;
			end
		end
		if (rem(n,6) == 5)
			if (wew(n-1)'*x4 <0)
				fn = wew(n-1) + (0.95)^n * (d4 + 1 ) * x4;
			else
				fn = wew(n-1) + (0.95)^n * (d4 - 1 ) * x4;
			end
		end
		
		if (rem(n,6) == 0)
			if (wew(n-1)'*x6 <0)
				fn = wew(n-1) + (0.95)^n * (d5 + 1 ) * x5;
			else
				fn = wew(n-1) + (0.95)^n * (d5 - 1 ) * x5;
			end
		end
	end

end

