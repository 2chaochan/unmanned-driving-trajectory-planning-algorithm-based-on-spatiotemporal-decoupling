figure;
hold on;
grid on;
t1 = 0.01:0.01:40;
t2 = 0.05:0.05:40;
% 绘制预测轨迹（红色虚线）
plot( t1 , speed_predict , 'r--', 'LineWidth', 1.5, 'DisplayName', 'Predicted');

% 绘制实际轨迹（蓝色实线）
plot( t2 , speed_real , 'b-', 'LineWidth', 0.8, 'DisplayName', 'Actual');

% 图形美化
xlabel('T(s)');
ylabel('Speed (m/s)');
title('期望速度和实际速度对比图');
legend('Location', 'best');
hold off;