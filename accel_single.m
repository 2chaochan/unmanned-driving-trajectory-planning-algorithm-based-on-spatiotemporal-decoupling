figure;
hold on;
grid on;

t = (0.01:0.01:40);

% 1. 计算所有点的加速度模长（非负）
magnitude = sqrt(graph_ax_real.^2 + graph_ay_real.^2);

% 2. 根据ay_real的符号为模长赋予方向
signs = sign(graph_ax_real); % 正数为1，负数为-1，零为0
accel_real = signs .* magnitude;

% 输出结果
plot(t, accel_real, 'b-', 'LineWidth', 0.8, 'DisplayName', 'Actual');

% 图形美化
xlabel('T (s)');
ylabel('Accelerate (m/s^2)');
title('加速度');
legend('Location', 'best');
hold off;