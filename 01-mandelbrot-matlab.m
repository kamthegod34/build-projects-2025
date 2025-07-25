clc
clear % renew the space for every new set

stepM = 0.01; % the smaller the step the greater the accurary

% setting up the range for the axes
Re_range = -2:stepM:1;
Im_range = -1:stepM:1;

% creating the figure the plot and adding information onto it
figure;
axis equal;
xlabel("Re");
ylabel("Im");
title("The Mandelbrot Set")

% all new plots are on the same plot
hold on

% loop through the real and imaginary axes
for Re_val = Re_range
    for Im_val = Im_range
        % create the complex number c
        c_check = Re_val + Im_val*1i;

        % check if the number is in the mandelbrot set
        % check for 500 iterations
        if(mandelbrot_check(c_check, 500))
            plot(Re_val, Im_val, 'b.') % plot the values
        end
    end
end

% checks whether the number is in the Mandelbrot Set
function [inM] = mandelbrot_check(c, maxIterations)
    z = 0; % start z off at the origin
    count = 0; % serves as the counter

    % check whether the squared sum of the Re and Im values is less than 4
    % check whether the counter has reached maximum iterations
    % conditions serve to check whether c is in the set
    while (real(z)^2 + imag(z)^2 < 4) && count < maxIterations
        z = z^2 + c; % function for mandelbrot set
        count = count + 1; % increase count
    end

    % checks if that point is non-escaping or not
    if count == maxIterations
        inM = true;
    else
        inM = false;
    end
end
