clear;

% Define the range of values for A
A = 0:0.5:15;

% Define the blocking probability functions
blocking_fca = @(a) a./(1+a);
blocking_bdcl = @(a) (7/2 * a.^2 + 2 * a.^3 + a.^4 / 4 ) ./ (1 + 3*a + 9/2 * a.^2 + 2*a.^3 + a.^4 /4);

% Calculate the blocking probabilities
blocking_prob_fca = blocking_fca(A);
blocking_prob_bdcl = blocking_bdcl(A);

% Plotting with more changes
plot(A, blocking_prob_fca, 'm-*', 'LineWidth', 2); % Magenta line with asterisk markers
hold on;
plot(A, blocking_prob_bdcl, 'c-o', 'LineWidth', 2); % Cyan line with circle markers
hold off;
xlabel('A');
ylabel('Blocking Probability');
title('Blocking Probabilities vs Traffic intensity A');
legend('FCA', 'BDCL', 'Location', 'Best');
grid on;
