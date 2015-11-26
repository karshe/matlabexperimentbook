function [fitresult, gof] = Fourier_Solvefx(X, Y)
%% Fit: 'Approximation'.
[xData, yData] = prepareCurveData( X, Y );

% Set up fittype and options.
ft = fittype( 'fourier5' );
opts = fitoptions( ft );
opts.Display = 'Off';
opts.Lower = [-Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf];
opts.StartPoint = [0 0 0 0 0 0 0 0 0 0 0 1.00666378853895];
opts.Upper = [Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'Approximation' );
h = plot( fitresult, xData, yData );
legend( h, 'Y vs. X', 'Approximation', 'Location', 'NorthEast' );
% Label axes
xlabel( 'X' );
ylabel( 'Y' );
grid on


