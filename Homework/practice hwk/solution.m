% Homework MATLAB template file
% Your main file should be named "solution.m" and it should be saved as UTF-8 file.

function [consoleout, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13] = solution()
 [consoleout, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13] = evalc('student_solution()'); 
end

function [A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13] = student_solution()
    % your solution code goes here    
    
    % Exercise 1. Building a Matrix
    A = [34, 45; 17, 6];
    
    % assign relevant variable
    A1 = A; 
    
    % Exercise 2. Matrix Operations
    A = [1, 2;-1, 1];
    B = eye(2)*2;
    C = [2, 0, -3;0, 0, -1];
    D = [1, 2;2, 3;-1, 0];
    x = [1; 0];
    y = [0; 1];
    z = [1; 2; -1];
    
    % assign relevant variables
    A2 = A+B;
    A3 = 3*x - 4*y;
    A4 = A*x;
    A5 = B*(x-y);
    A6 = D*x;
    A7 = D*y + z;
    A8 = A*B;
    A9 = B*C;
    A10 = C*D;    
 
    % Exercise 3. Root Finding
    x0 = -3;
    xa = -3;
    xb = 1; 

    [val_nr, niter_nr] = newton_raphson(@cos_fun, @der_cos_fun, x0);
    
    [val_bi, niter_bi] = bisect(@cos_fun, xa, xb);
    
    % assign relevant variables
    A11 = val_nr';
    A12 = val_bi';
    A13 = [niter_nr, niter_bi];
    disp(A13)
end

% your extra functions, if you need them, can be in another files (don't forget to upload them too!)