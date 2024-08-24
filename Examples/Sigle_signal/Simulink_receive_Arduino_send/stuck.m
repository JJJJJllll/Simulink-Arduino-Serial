time = simout.Time;
data = simout.Data(:);
figure;scatter(time, data) % 看看点的分布、有没有堆在一起、另一块空着
figure;histogram(time, 0:1:ceil(time(end))); title("看看每秒多少个点") % 最好是都拿到1000/delay ms个点
figure;histogram(time, 0:0.1:ceil(time(end))); title("看看每0.1s多少个点") % 看看每0.1秒拿到多少点、最好均匀、但其实不均匀