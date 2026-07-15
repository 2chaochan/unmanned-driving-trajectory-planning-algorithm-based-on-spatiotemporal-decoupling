figure;
hold on;
grid on;

t = 0.1:0.1:40;


% 绘制实际轨迹（蓝色实线）
plot(t, heading_real, 'b-', 'LineWidth', 0.8, 'DisplayName', 'heading');

% 图形美化
xlabel('Time (s)');
ylabel('Theta (°)');
title('航向角');
legend('Location', 'best');
hold off;