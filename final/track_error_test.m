
%两点间误差距离
distance = power((((data_x - graph_x_predict).^2 + (data_y - graph_y_predict).^2)/8),1/10);
t = 0.1:0.1:40;

plot(t, distance , 'b-', 'LineWidth', 0.8, 'DisplayName', 'tractory error');

% 图形美化
xlabel('Time (s)');
ylabel('Error Distance (m)');
title('轨迹误差示意图');
legend('Location', 'best');
hold off;