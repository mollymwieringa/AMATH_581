% Homework MATLAB template file
% Your main file should be named "solution.m" and it should be saved as UTF-8 file.

function [consoleout, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15] = solution()
 [consoleout, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15] = evalc('student_solution(0)'); 
end

function [A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15] = student_solution(dummy_argument)
    % your solution code goes here
    
    % Part 1. Consider the ODE
    
    % solve numerically using forward Euler method
    
    % assign variables 
    A1 = 0; 
    A2 = 0;
    A3 = 0;
    
    % solve numerically using Heun's predictor-corrector method
    
    % assign variables
    A4 = 0;
    A5 = 0;
    A6 = 0;
    
    % Part 2. Consider the van der Pol oscillator
    
    % solve using set of conditions 1 for ode45, ode23, and ode113
    
    % assign variable
    A7 = 0;
    
    % solve using set of conditions 2 for the same set of ode solvers
    
    % assign variables
    A8 = 0;
    A9 = 0;
    A10 = 0;
    
    
    % Part 3. Fitzhugh neurons
    
    % assign variables
    A11 = 0;
    A12 = 0;
    A13 = 0;
    A14 = 0;
    A15 = 0;

end

% your extra functions, if you need them, can be in another files (don't forget to upload them too!)