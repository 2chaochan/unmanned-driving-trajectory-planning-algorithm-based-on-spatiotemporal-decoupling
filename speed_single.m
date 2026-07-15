figure;
hold on;
grid on;

t = 0.05:0.05:40;


% 绘制实际轨迹（蓝色实线）
plot(t, speed_real, 'b-', 'LineWidth', 0.8, 'DisplayName', 'speed');

% 图形美化
xlabel('Time (s)');
ylabel('Speed (m/s)');
title('速度');
legend('Location', 'best');
hold off;