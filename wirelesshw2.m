% Define range of values for p and N
p_values = linspace(0, 1, 100); % range of loss probability (pi)
N_values = 1:10; % range of number of receivers

% Initialize arrays to store throughput and delay values
throughput = zeros(length(p_values), length(N_values));
delay = zeros(length(p_values), length(N_values));

% Calculate throughput and delay for each combination of p and N
for i = 1:length(p_values)
    for j = 1:length(N_values)
        pi = p_values(i);
        N = N_values(j);
        throughput(i, j) = (1 - pi) / (1 + pi*(N + 1));
        delay(i, j) = 1 / throughput(i, j);
    end
end

% Plot results
figure;

% Plot throughput
subplot(2, 1, 1);
plot(p_values, throughput);
xlabel('Loss Probability (p)');
ylabel('Throughput (S)');
title('Throughput vs Loss Probability for Different Number of Receivers');
legend(cellstr(num2str(N_values')), 'Location', 'best');
grid on;

% Plot delay
subplot(2, 1, 2);
plot(p_values, delay);
xlabel('Loss Probability (p)');
ylabel('Delay');
title('Delay vs Loss Probability for Different Number of Receivers');
legend(cellstr(num2str(N_values')), 'Location', 'best');
grid on;
