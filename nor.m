clc;
clear all;

% different shifts are modelled with different mean but same standard dev

s=40;
m1=120;
m2=85;
m3=160;

% create numbers from normal distribution

r1=normrnd(m1,s,[1,20000]);
r2=normrnd(m2,s,[1,20000]);
r3=normrnd(m3,s,[1,20000]);

% remove -ve numbers and 200+ numbers

r1=r1(r1>=0); r1=r1(r1<=200);
r2=r2(r2>=0); r2=r2(r2<=200);
r3=r3(r3>=0); r3=r3(r3<=200);

allr=[r1, r2, r3];

%--------------- SSC Normalized marks ---------

% 0.1% candidates in Total:
allp=round(numel(allr)/1000);
B=sort(allr); 
Mgt = mean(B(numel(B)-allp:end))
Mgq = mean(allr) + std(allr)

% 0.1% candidates in each shift:
n1p=round(numel(r1)/1000);
n2p=round(numel(r2)/1000);
n3p=round(numel(r3)/1000);

Mgmq = max([mean(r1), mean(r2), mean(r3)]) + std(r1)


%%---------- shift 1 ----------

B=sort(r1);
Mt1 = mean(B(numel(B)-n1p:end))
M1q = mean(r1) + std(r1)

Nor1 = [];
for i=1:numel(r1)
Nor1(i) = ( (Mgt - Mgq)/(Mt1 - M1q) ) * (r1(i) - M1q) + Mgmq;
end

figure(1)
plot(r1, Nor1, 'o')
hold on
plot ([0, 200], [0, 200], '-k')



%%---------- shift 2 ----------

B=sort(r2);
Mt2 = mean(B(numel(B)-n2p:end))
M2q = mean(r2) + std(r2)

Nor2 = [];
for i=1:numel(r2)
Nor2(i) = ( (Mgt - Mgq)/(Mt2 - M2q) ) * (r2(i) - M2q) + Mgmq;
end

plot(r2, Nor2, 'o')



%%---------- shift 3 ----------

B=sort(r3);
Mt3 = mean(B(numel(B)-n3p:end))
M3q = mean(r3) + std(r3)

Nor3 = [];
for i=1:numel(r3)
Nor3(i) = ( (Mgt - Mgq)/(Mt3 - M3q) ) * (r3(i) - M3q) + Mgmq;
end

plot(r3, Nor3, 'o')


Nor = [Nor1, Nor2, Nor3];



























