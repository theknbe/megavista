% rd_plotGroupMeanIndivRunFStats.m

load /Volumes/Plata1/LGN/Group_Analyses/fOverallMeans_3T_7T_N4_20120428.mat

delays = [0 1 2 3];

figure
hold on
p(1) = errorbar(delays, mean(fOMeans31), std(fOMeans31)./2,'s-');
p(2) = errorbar(delays, mean(fOMeans32), std(fOMeans32)./2,'^-');
p(3) = errorbar(delays, mean(fOMeans71), std(fOMeans71)./2,'s-');
p(4) = errorbar(delays, mean(fOMeans72), std(fOMeans72)./2,'^-');

colors = {'k','k','b','b'};
for i = 1:numel(p)
    set(p(i),'Color',colors{i},'MarkerFaceColor',colors{i});
end
set(gca,'XTick',delays)
xlabel('delay (TR)')
ylabel('F statistic')
title(sprintf('Group means and stes of individual run Fs\nfor each hemisphere and field strength'))


