%distribuzione chi quadro

clear all;
close all;
clc;


%distr chi quadro - N gradi di libert�

M=100000; %numero di campioni
N=32; %numero gradi di libert�

%In questo caso non le peso con l'inversa della matrice di covarianza delle
%variabili x perch� questa � la matrice identit�, scrivendolo
%matematicamente sto sommando N vc con distribuzione gaussiana, ognuna con
%valore medio 0 e varianza 1, la ddp di prob congiunta � rappresentabile
%esclusivamente in 2 gradi di libert�

y=zeros(M,1);

for i=1:N
y=randn(M,1).^2+y; %stimatore della varianza --> metto 1/M
end

y=y./N;

figure,hist(y,100)

%ddp gaussiana multivariata, M=2

% x=[linspace(-5,5,500);linspace(-5,5,500)]';
% 
% for i=1:500
%     for j=1:500
%         ddp(i,j)=(2*pi)^-1*2^-1/2*exp(-1/2*([x(i,1) x(j,2)]*eye(size(x,2))*[x(i,1);x(j,2)]));
%     end
% end
% 
% mesh(x(:,1),x(:,2),ddp)
