function sigmoidrfunction(n)
%UNTITLED Summary of this funcount + 1ion goes here
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



fin = [0 0 0 0]';
x(1) = 1;
y1(1) = 0;
y2(1) = 0;
y3(1) = 0;
y4(1) = 0;
count = 1;

while(count <= n)
        
        
        if (rem(count + 1,6) == 1)
			if (fin' * x6 <0)
				fin = fin + (0.95)^count * (d6 - 1/(1 + exp(1)^(-(fin' * x6)))) * x6;
			else
				fin = fin + (0.95)^count * (d6 - 1/(1 + exp(1)^(-(fin' * x6)))) * x6;
			end
		end
		if (rem(count + 1,6) == 2)
			if (fin' * x1 <0)
				fin = fin + (0.95)^count * (d1 - 1/(1 + exp(1)^(-(fin' * x1)))) * x1;
			else
				fin = fin + (0.95)^count * (d1 - 1/(1 + exp(1)^(-(fin' * x1)))) * x1;
			end
		end
		if (rem(count + 1,6) == 3)
			if (fin' * x2 <0)
				fin = fin + (0.95)^count * (d2 - 1/(1 + exp(1)^(-(fin' * x2)))) * x2;
			else
				fin = fin + (0.95)^count * (d2 - 1/(1 + exp(1)^(-(fin' * x2)))) * x2;
			end
		end
		if (rem(count + 1,6) == 4)
			if (fin' * x3 <0)
				fin = fin + (0.95)^count * (d3 - 1/(1 + exp(1)^(-(fin' * x3)))) * x3;
			else
				fin = fin + (0.95)^count * (d3 - 1/(1 + exp(1)^(-(fin' * x3)))) * x3;
			end
		end
		if (rem(count + 1,6) == 5)
			if (fin' * x4 <0)
				fin = fin + (0.95)^count * (d4 - 1/(1 + exp(1)^(-(fin' * x4)))) * x4;
			else
				fin = fin + (0.95)^count * (d4 - 1/(1 + exp(1)^(-(fin' * x4)))) * x4;
			end
		end
		
		if (rem(count + 1,6) == 0)
			if (fin' * x5 <0)
				fin = fin + (0.95)^count * (d5 - 1/(1 + exp(1)^(-(fin' * x5)))) * x5;
			else
				fin = fin + (0.95)^count * (d5 - 1/(1 + exp(1)^(-(fin' * x5)))) * x5;
			end
        end
    count = count +1;
    x(count) = count;
    y1(count) = fin(1);
    y2(count) = fin(2);
    y3(count) = fin(3);
    y4(count) = fin(4);

    
end

plot(x,y1,x,y2,x,y3,x,y4);

end