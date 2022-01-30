% numbers to test the Mandelbrot set:

Mandelbrot_Check(0+0i, 600);
Mandelbrot_Check(1i+0i, 600);

%Defien step var:
step = 0.01;
%Discretization of the plot:
Re_plot = -2:step:1;
Im_plot = -1:step:1;

hold on

%The Mandelbrot set as a red dot:
for Re = Re_plot
    for Im = Im_plot
        c_in = Re + Im*1i;
        if  (Mandelbrot_Check(c_in,600))
            plot(Re,Im,'r.')
        end
    end
end

% Define a function to determine if the number is in Mandelbrot set:
function [inSet] = Mandelbrot_Check(c, maxIter)
z = 0;
counter = 0;

while abs(z)<2 && counter < maxIter
    z = z^2 + c;
    counter = counter +1;
end

if counter == maxIter
    inSet = true;
else
    inSet = false;
end
end