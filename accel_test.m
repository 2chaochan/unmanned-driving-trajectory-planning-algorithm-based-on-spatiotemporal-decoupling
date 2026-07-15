figure;
hold on;
grid on;

t = (0.01:0.01:40);

% data = accel_predict;
% 
% % 用户指定随机数范围
% low = -0.5; % 随机数下限
% high = 0.5; % 随机数上限
% 
% % 生成均匀分布的随机数数组
% randomNumbers = low + (high - low) * rand(size(data));
% 
% % 将随机数添加到原数据
% modifiedData = data + randomNumbers;
% 
% 
% 
% % 保存结果（可选）
% save('modified_data.mat', 'modifiedData');


% 绘制预测轨迹（红色虚线）
plot(t, accel_predict, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Predicted');

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
title('期望加速度和实际加速度对比图');
legend('Location', 'best');
hold off;