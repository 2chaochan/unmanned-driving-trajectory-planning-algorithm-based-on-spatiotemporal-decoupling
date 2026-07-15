figure;
hold on;
grid on;


% 绘制预测轨迹（红色虚线）
plot(graph_x_predict, graph_y_predict, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Predicted');

% 绘制实际轨迹（蓝色实线）
plot(data_x, data_y, 'b-', 'LineWidth', 0.8, 'DisplayName', 'Actual');

ylim([8, 16]);
% 图形美化
xlabel('X Position (m)');
ylabel('Y Position (m)');
title('期望轨迹和实际轨迹对比图');
legend('Location', 'best');
hold off;