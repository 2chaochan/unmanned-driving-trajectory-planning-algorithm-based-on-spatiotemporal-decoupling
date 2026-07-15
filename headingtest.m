figure;
hold on;
grid on;

t = 0.1:0.1:40;

% 绘制预测轨迹（红色虚线）
plot(t, unnamed1 , 'r--', 'LineWidth', 1.5, 'DisplayName', 'Predicted');

% 绘制实际轨迹（蓝色实线）
plot(t, heading_real, 'b-', 'LineWidth', 0.8, 'DisplayName', 'Actual');

% 图形美化
xlabel('Time (s)');
ylabel('Theta (°)');
title('期望航向角和实际航向角对比图');
legend('Location', 'best');
hold off;