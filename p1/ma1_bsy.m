%% Author: Berk Saltuk Yılmaz
%% MATLAB Mini Project 1

% Part (a)
% phase = -pi + 2*pi*rand();
% 
% A = 19; % Last 2 digits of 21903419
% f_0 = 34; % Last 3 digits before last 2 digits 034; used as 34
% k = 2; % Given in part a
% 
% T_s = 0.001; % T_s is 10^-3
% 
% t = 0:0.001:1/f_0+0.001; % Ts = 10^-1
% 
% 
% x = A*exp(1i*(2*pi*f_0*k.*t+phase));
% 
% r_1 = A*cos(2*pi*f_0*k.*t+phase);
% 
% im_1 = A*sin(2*pi*f_0*k.*t+phase);
% 
% figure;
% subplot (2,1,1);
% plot(t,r_1);
% title('Part (a) : Real Part Over Two Periods');
% grid on;
% xlabel('Time (sec)')
% ylabel('Amplitude')
% 
% subplot (2,1,2);
% plot(t,im_1);
% title('Part (a) : Imaginary Part Over Two Periods');
% grid on;
% xlabel('Time (sec)')
% ylabel('Amplitude')

% % Part B
% phase = -pi + 2*pi*rand();
% 
% T_s = 0.01; % Sampling Interval
% plotSequenceAndPrint(T_s,phase);
% 
% T_s = 0.001;
% plotSequenceAndPrint(T_s,phase);
% 
% T_s = 0.0001;
% plotSequenceAndPrint(T_s,phase);
% 
% T_s = 0.00001;
% plotSequenceAndPrint(T_s,phase);
% 
% function plotSequenceAndPrint(T_s, phase)
% 
%     A = 19; % Last 2 digits of 21903419
%     f_0 = 34; % Last 3 digits before last 2 digits 034; used as 34
%     k = 2; % Given in part a
% 
%     t = 0:T_s:1/(f_0 + 0.001);
% 
%     real = A*cos(2*pi*f_0*k.*t+phase);
%     imag = A*sin(2*pi*f_0*k.*t+phase); 
%     
%     figure;
%     subplot (2,1,1);
%     plot(t, real);
%     title('Part (b) : Real Part Over Two Periods');
%     grid on;
%     xlabel('Time (sec)')
%     ylabel('Amplitude')
%     
%     subplot (2,1,2);
%     plot(t, imag);
%     title('Part (b) : Imaginary Part Over Two Periods');
%     grid on;
%     xlabel('Time (sec)')
%     ylabel('Amplitude')
% 
%     w_0 = 2*pi*f_0; % Radian Frequency
%     w_hat = w_0*T_s; % Digital Frequency
%     T_0 = 1/f_0; % Period of the signal
%     delta_t = -1*(phase/w_0); % Time shift corresponding to the phase shift
%     fprintf("For T_s : %f\n", T_s);
%     fprintf("Sequence : 19*exp(j*(%.3f*k*n+%.3f)\n", w_hat,phase);
%     fprintf("Radian frequency : %.3f\n", w_0);
%     fprintf("Digital Frequency : %.3f\n", w_hat);
%     fprintf("Period of the signal : %.3f\n", T_0);
%     fprintf("Time shift : %.3f\n", delta_t);
%     fprintf("------------------------------------\n");
% end

% Part C
% phase = -pi + 2*pi*rand();
% 
% A = 19; % Last 2 digits of 21903419
% f_0 = 34; % Last 3 digits before last 2 digits 034; used as 34
% k = 2; % Given in part a
% 
% T_s = 0.0001; % T_s is 10^-4
% t = 0:T_s:(1/(2*f_0)) - T_s; % Ts = 10^-4
% 
% im_1 = A*sin(2*pi*f_0*k*t+phase);
% sumRe = 0;
% sumIm = 0;
% for t_vals = 1 : length(t)
%     sumRe = sumRe + A*cos((2*pi*f_0*k*t(t_vals)) + phase);
%     sumIm = sumIm + A*sin((2*pi*f_0*k*t(t_vals)) + phase);
% end
% fprintf("Sum of Real Part: %f, Sum of Imag Part: %f\n", sumRe, sumIm);

% Part D
% phase = 0.521419;
% A = 19; % Last 2 digits of 21903419
% f_0 = 34; % Last 3 digits before last 2 digits 034; used as 34
% T_0 = 1/f_0;
% 
% T_s = 0.0001; % T_s is 10^-3
% t = 0:T_s:T_0 - T_s; % Ts = 10^-1
% 
% signal1 = A*exp(1i*((2*pi*f_0*5*t)+phase)); % K = 5
% signal2 = A*exp(1i*((2*pi*f_0*7*t)+phase)); % K = 7
% 
% fprintf("A : %d, Phase : %f\nFundamental Frequency : %d, Sampling Interval : %.3f\n", A, phase, f_0, T_s);
% 
% newSignal = signal1 + signal2;
% figure;
% 
% plot(t, real(newSignal));
% title('Part (d) : Sum of the real parts of two complex exponentials');
% grid on;
% xlabel('Time (sec)')
% ylabel('Amplitude')
% 
% set = [1, 3, 5];
% T_s = 0.0001;
% for index = 1 : length(set)
%     T = set(index)/(f_0);
%     increment= 0;
%     sum_harmonics = 0;
%     while increment < T
%         sum_harmonics = sum_harmonics + A*exp(1i*((2*pi*f_0*5*increment)+phase)) + (A*exp(-1i*((2*pi*f_0*7*increment)+phase)));
%         increment = increment + T_s;
%     end
%     fprintf("Sum for %d fundamental period:%f\n", set(index), sum_harmonics);
% end
% set = 1:1:100;
% T_s = 0.0001;
% x = [];
% for index = 1 : length(set)
%     T = set(index)/(f_0);
%     increment= 0;
%     sum_harmonics = 0;
%     while increment < T
%         sum_harmonics = sum_harmonics + A*exp(1i*((2*pi*f_0*5*increment)+phase)) + (A*exp(-1i*((2*pi*f_0*7*increment)+phase)));
%         increment = increment + T_s;
%     end
%     fprintf("Sum for %d fundamental period:%f\n", set(index), sum_harmonics);
%     x(index) = sum_harmonics;
% end
% 
% plot(set, real(x))
% title('Part (d) : Sum of the sum the real parts of two complex exponentials');
% grid on;
% xlabel('Periods')
% ylabel('Amplitude')

% Part E
% 
% phase = 0;
% A = 19; % Last 2 digits of 21903419
% f_0 = 34; % Last 3 digits before last 2 digits 034; used as 34
% T_0 = 1/f_0;
% 
% syms t_param
% 
% func = (A*exp(1i*((2*pi*f_0*5*t_param)+phase))).*conj((A*exp(1i*((2*pi*f_0*7*t_param)+phase))));
% 
% inn_product = int(func, 0, T_0);
% 
% fprintf('For harmonics 5 and 7: %f %fi\n', real(inn_product),imag(inn_product));
% T_s = 0.0001;
% t = 0:T_s:T_0 - T_s;
% innerproduct_signal = A*exp(1i*((2*pi*f_0*5*t)+phase)).*conj((A*exp(1i*((2*pi*f_0*7*t)+phase))));
% plot(t, real(innerproduct_signal))
% title('Part (e) : Inner Product Values over one period');
% grid on;
% xlabel('Time (sec)')
% ylabel('Amplitude')
% 
% set = [1,3,5];
% for index = 1 : length(set)
%     T = set(index)/(f_0);
%     increment= 0;
%     sum_inner = 0;
%     while increment < T
%         sum_inner = sum_inner + A*exp(1i*((2*pi*f_0*5*increment)+phase)).*(A*exp(-1i*((2*pi*f_0*7*increment)+phase)));
%         increment = increment + T_s;
%     end
%     fprintf("Sum for %d fundamental period:%f\n", set(index), sum_inner);
% end
% set = 1:1:100;
% T_s = 0.0001;
% plotthis = [];
% for index = 1 : length(set)
%     T = set(index)/(f_0);
%     increment= 0;
%     sum_inner = 0;
%     while increment < T
%         sum_inner = sum_inner + A*exp(1i*((2*pi*f_0*5*increment)+phase)).*(A*exp(-1i*((2*pi*f_0*7*increment)+phase)));
%         increment = increment + T_s;
%     end
%     fprintf("Sum for %d fundamental period:%f\n", set(index), sum_inner);
%     plotthis(index) = sum_inner;
% end
% 
% plot(set, plotthis);
% 
% 
% yline(real(inner_product))
% title('Part (e) : Inner Product of two signals over a period');
% grid on;
% xlabel('Time (sec)')
% ylabel('Amplitude')
% xlim([0 T_0])


% Part F
% phase = 0;
% A = 19; % Last 2 digits of 21903419
% f_0 = 34; % Last 3 digits before last 2 digits 034; used as 34
% T_0 = 1/f_0;
% 
% syms t_param
% 
% func_to_integrate = (A*exp(1i*((2*pi*f_0*5*t_param)+phase))).*conj((A*exp(1i*((2*pi*f_0*5*t_param)+phase))));
% 
% inner_product = int(func_to_integrate, 0, T_0);
% 
% % fprintf('For harmonics 5 and 5: %f %fi\n', real(inner_product),imag(inner_product));
% 
% T_s = 0.0001;
% t = 0:T_s:T_0 - T_s;
% innerproduct_signal = A*exp(1i*((2*pi*f_0*5*t)+phase)).*conj((A*exp(1i*((2*pi*f_0*5*t)+phase))));
% plot(t, real(innerproduct_signal))
% title('Part (f) : Inner Product Values over one period');
% grid on;
% xlabel('Time (sec)')
% ylabel('Amplitude')
% 
% set = [1,3,5];
% for index = 1 : length(set)
%     T = set(index)/(f_0);
%     increment= 0;
%     sum_inner = 0;
%     while increment < T
%         sum_inner = sum_inner + A*exp(1i*((2*pi*f_0*5*increment)+phase)).*(A*exp(-1i*((2*pi*f_0*5*increment)+phase)));
%         increment = increment + T_s;
%     end
%     fprintf("Sum for %d fundamental period:%f\n", set(index), sum_inner);
% end
% set = 1:1:100;
% T_s = 0.0001;
% plotthis = [];
% for index = 1 : length(set)
%     T = set(index)/(f_0);
%     increment= 0;
%     sum_inner = 0;
%     while increment < T
%         sum_inner = sum_inner + A*exp(1i*((2*pi*f_0*5*increment)+phase)).*(A*exp(-1i*((2*pi*f_0*5*increment)+phase)));
%         increment = increment + T_s;
%     end
%     fprintf("Sum for %d fundamental period:%f\n", set(index), sum_inner/A^2);
%     plotthis(index) = sum_inner;
% end
% 
% plot(set, plotthis);
% title('Part (f) : Sum over first 100 periods');
% grid on;
% xlabel('Periods')
% ylabel('Amplitude')
