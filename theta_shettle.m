figure;
hold on;
grid on;

% 使用移动平均滤波（窗口大小为5）
windowSize = 100;
data = smoothdata(theta_smooth, 'movmean', windowSize);
theta_smoothed = medfilt2(data, [5 2]);
t = (0.01:0.01:40);
% 输出结果
plot(t,theta_smoothed, 'b-', 'LineWidth', 0.8, 'DisplayName', 'Actual');

% 图形美化
xlabel('T (s)');
ylabel('theta (°)');
title('前轮转角');
legend('Location', 'best');
hold off;



