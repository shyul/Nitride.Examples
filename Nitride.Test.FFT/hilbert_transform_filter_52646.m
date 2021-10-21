h=1:2:30;
h1=1./h;
h2=reshape([h1;zeros(1,15)],1,30);
h4=[-fliplr(h2) 0 h2];
hh=kaiser(61,8)';
h3=(2/pi)*[0 h2 zeros(1,500) -fliplr(h2)].*[hh(31:61) zeros(1,500) hh(1:30)];
figure(1)

subplot(3,1,1)
plot(-0.5:1/561:0.5-1/561,fftshift(real(fft([1 zeros(1,560)]))))
hold on
plot(-0.5:1/561:0.5-1/561,fftshift(real(fft(j*h3))),'r')
hold off
grid on

subplot(3,1,2)
plot(-0.5:1/561:0.5-1/561,fftshift(abs(fft([1 zeros(1,560)]+j*h3))))
grid on

subplot(3,1,3)
plot(-0.5:1/561:0.5-1/561,fftshift(20*log10(abs(fft([1 zeros(1,560)]+j*h3)/2))))
grid on
axis([-0.5 0.5 -100 10])

figure(2)
subplot(5,1,1)
stem(-30:30,[zeros(1,30) 1 zeros(1,30)],'linewidth',2);
grid on
title('Impulse Response Direct Path Filter, h0(n)')
axis([-35 35 -1.1 1.1])

subplot(5,1,2)
stem(-30:30,h4.*hh,'r','linewidth',2)
grid on
title('Impulse Response Hilbert Transform Filter, h1(n)')
axis([-35 35 -1.1 1.1])

subplot(5,1,3)
plot(-0.5:1/561:0.5-1/561,fftshift(real(fft([1 zeros(1,560)]))),'linewidth',2)
grid on
title('Real Part, Frequency Response Direct Path Filter, H0(w)')
axis([-0.5 0.5 -2.1 2.1])

subplot(5,1,4)
plot(-0.5:1/561:0.5-1/561,fftshift(real(fft(j*h3))),'r','linewidth',2)
grid on
title('Imaginary Part, Response Hilbert Transform Filter, H1(w)')
axis([-0.5 0.5 -2.1 2.1])

subplot(5,1,5)
plot(-0.5:1/561:0.5-1/561,fftshift(abs(fft([1 zeros(1,560)]+j*h3))),'linewidth',2)
axis([-0.5 0.5 -0.1 2.1])
grid on
title('Frequency Response Analytic Filter: FFT(h0(n)+j*h1(n)) = H0(w)+j*H1(w)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h=1:2:60;
h1=1./h;
h2=reshape([h1;zeros(1,30)],1,60);
h4=[-fliplr(h2) 0 h2];
hh=kaiser(121,8)';
h3=(2/pi)*[0 h2 zeros(1,500) -fliplr(h2)].*[hh(61:121) zeros(1,500) hh(1:60)];
figure(3)

subplot(3,1,1)
plot(-0.5:1/621:0.5-1/621,fftshift(real(fft([1 zeros(1,620)]))))
hold on
plot(-0.5:1/621:0.5-1/621,fftshift(real(fft(j*h3))),'r')
hold off
grid on

subplot(3,1,2)
plot(-0.5:1/621:0.5-1/621,fftshift(abs(fft([1 zeros(1,620)]+j*h3))))
grid on

subplot(3,1,3)
plot(-0.5:1/621:0.5-1/621,fftshift(20*log10(abs(fft([1 zeros(1,620)]+j*h3)/2))))
grid on
axis([-0.5 0.5 -100 10])

figure(4)
subplot(5,1,1)
stem(-60:60,[zeros(1,60) 1 zeros(1,60)],'linewidth',2);
grid on
title('Impulse Response Direct Path Filter, h0(n)')
axis([-65 65 -1.1 1.1])

subplot(5,1,2)
stem(-60:60,h4.*hh,'r','linewidth',2)
grid on
title('Impulse Response Hilbert Transform Filter, h1(n)')
axis([-65 65 -1.1 1.1])

subplot(5,1,3)
plot(-0.5:1/621:0.5-1/621,fftshift(real(fft([1 zeros(1,620)]))),'linewidth',2)
grid on
title('Real Part, Frequency Response Direct Path Filter, H0(w)')
axis([-0.5 0.5 -2.1 2.1])

subplot(5,1,4)
plot(-0.5:1/621:0.5-1/621,fftshift(real(fft(j*h3))),'r','linewidth',2)
grid on
title('Imaginary Part, Response Hilbert Transform Filter, H1(w)')
axis([-0.5 0.5 -2.1 2.1])

subplot(5,1,5)
plot(-0.5:1/621:0.5-1/621,fftshift(abs(fft([1 zeros(1,620)]+j*h3))),'linewidth',2)
axis([-0.5 0.5 -0.1 2.1])
grid on
title('Frequency Response Analytic Filter: FFT(h0(n)+j*h1(n)) = H0(w)+j*H1(w)')

