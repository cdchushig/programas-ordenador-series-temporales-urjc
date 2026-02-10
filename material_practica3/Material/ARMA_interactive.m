function ARMA_interactive
% MATLAB code to illustrate ARMA(1,1) process with interactive sliders for pole and zero in polar form.
% Note: Allowing complex roots leads to complex coefficients and a complex-valued process.
% Plots show real and imaginary parts where applicable.

    % Clear figures
    close all;

    % Create figure
    fig = figure('Name', 'ARMA(1,1) Illustration', 'NumberTitle', 'off');

    pos = [20 200 200 20]; p1=20; p2=300; p3=200; p4=20;
    % Sliders for pole
    uicontrol('Style', 'text', 'Position', [p1 p2 p3 p4], 'String', 'Pole magnitude (rho_p <1 for stationarity)');
    slider_rho_a = uicontrol('Style', 'slider', 'Position', [p1 p2-20 p3 p4], 'Min', 0, 'Max', 2, 'Value', 0.9, 'Callback', @update_plots);

    uicontrol('Style', 'text', 'Position', [p1 p2-50 p3 p4], 'String', 'Pole angle (degrees)');
    slider_theta_a = uicontrol('Style', 'slider', 'Position', [p1 p2-70 p3 p4], 'Min', 0, 'Max', 180, 'Value', 90, 'Callback', @update_plots);

    % Sliders for zero
    uicontrol('Style', 'text', 'Position', [p1 p2-100 p3 p4], 'String', 'Zero magnitude (rho_z <1 for invertibility)');
    slider_rho_c = uicontrol('Style', 'slider', 'Position', [p1 p2-120 p3 p4], 'Min', 0, 'Max', 2, 'Value', 0.9, 'Callback', @update_plots);

    uicontrol('Style', 'text', 'Position', [p1 p2-150 p3 p4], 'String', 'Zero angle (degrees)');
    slider_theta_c = uicontrol('Style', 'slider', 'Position', [p1 p2-170 p3 p4], 'Min', 0, 'Max', 180, 'Value', 0, 'Callback', @update_plots);

    % Axes for plots
    ax1 = subplot(2,2,1); % Realization
    ax2 = subplot(2,2,2); % Autocovariance
    ax3 = subplot(2,2,4); % Spectral density
    ax4 = subplot(2,2,3); % Roots

    % Initial update
    update_plots([], []);

    % Nested function for updates
    function update_plots(~, ~)
        % Get slider values
        rho_a = get(slider_rho_a, 'Value');
        theta_a = get(slider_theta_a, 'Value');
        rho_c = get(slider_rho_c, 'Value');
        theta_c = get(slider_theta_c, 'Value');
        
        % Compute pole and zero positions
        za0 = rho_a * exp(1i * theta_a * pi / 180); % = (r*cos, r*sin)
        zc0 = rho_c * exp(1i * theta_c * pi / 180);
        

        % Compute ARMA parameters
        if theta_a == 0
            a = poly(za0) ;
        else
            a = poly([za0, conj(za0)]) ;
        end
        if theta_c ==0
            c = poly(zc0) ;
        else
            c = poly([zc0, conj(zc0)]) ;
        end
        
        % Warnings
        if rho_a > 1
            disp('Warning: Process may not be stationary (|pole| <= 1)');
        end
        if rho_c > 1
            disp('Warning: Process may not be invertible (|zero| <= 1)');
        end
        
        % Generate realization
        N = 1024*1;
        rng(0);  % For reproducibility
        e = randn(N, 1); % sig=1
        y = filter(c, a, e);

        % test
        if ~isreal(y)
            warning('Complex stoch. proc. !')
        end
        
        % Plot realization
        cla(ax1); % clears contents, without deleting the axes itself.
        t = 1:min(N,1000);
        plot(ax1, t, y(t), 'b-');
        title(ax1, 'Realization of the Process');
        xlabel(ax1, 't');
        ylabel(ax1, 'y_t');
        grid(ax1, 'on');
        
        % Autocovariance
        cla(ax2);
        maxlag = 20;
        autocorr(ax2, y, 'NumLags', maxlag);

        % Roots plot
        cla(ax4);
        ang = linspace(0, 2*pi, 100);
        plot(ax4, cos(ang), sin(ang), 'k--');  % Unit circle
        hold(ax4, 'on');

        plot(ax4, real(za0), imag(za0), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
        plot(ax4, real(zc0), imag(zc0), 'bx', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
        % Conj
        plot(ax4, real(za0), -imag(za0), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
        plot(ax4, real(zc0), -imag(zc0), 'bx', 'MarkerSize', 8, 'MarkerFaceColor', 'b');

        hold(ax4, 'off');
        axis(ax4, 'equal');
        xlim(ax4, [-2 2]);
        ylim(ax4, [-2 2]);
        title(ax4, 'Poles (o) and Zeros (x)');
        xlabel(ax4, 'Real Part');
        ylabel(ax4, 'Imag Part');
        grid(ax4, 'on');
        

        
        % Estimated (periodogram)
        fs = 1;
        [Pxx, f] = periodogram(y, [], 100, fs);

        % Spectral density
        % Theoretical

        w = linspace(-pi, pi, 512);
        %w = 2 * pi * f;   % Convert f (Hz) to w (radians/sample)
        wi = exp(1i*w); % exp(iw)
        f_theo = abs(polyval(c,wi)).^2 ./ abs(polyval(a,wi)).^2;
        %f_theo = (1 / (2 * pi)) * abs(h).^2;
        
        % Plot
        cla(ax3);
        plot(ax3, w / (2*pi), 10*log(f_theo), 'b-', 'LineWidth', 2);
        hold(ax3, 'on');
        plot(ax3, f,  10*log(Pxx), 'r--', 'LineWidth', 1);
        hold(ax3, 'off');
        legend(ax3, 'True', 'Estimated (Periodogram)');
        title(ax3, 'Spectral Density');
        xlabel(ax3, 'Frequency');
        ylabel(ax3, 'dB/Hz');
        grid(ax3, 'on');
        ylim(ax3, [min(10*log([f_theo(:); Pxx(:)])) max(10*log([f_theo(:); Pxx(:)])) * 1.1]);
    end
end