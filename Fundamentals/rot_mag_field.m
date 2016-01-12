% Illustrates the concept of rotating magnetic
% field.

% Define constants
bmax = 1;
freq = 60;
w = 2*pi*freq;

% Set time
t = 0:1/6000:1/60;

% Generate magnetic field vectors
Baa = sin(w*t) .* (cos(0) + 1i*sin(0));
Bbb = sin(w*t-2*pi/3) .* (cos(2*pi/3) + 1i*sin(2*pi/3));
Bcc = sin(w*t+2*pi/3) .* (cos(-2*pi/3) + 1i*sin(-2*pi/3));

Bnet = Baa + Bbb + Bcc;

% Define circle on which to represent magnetic fields
circle = 1.5 * (cos(w*t) + 1i*sin(w*t));

% Plot magnitude & direction of resultant vectors
while 1
    for ii = 1:length(t)

        plot(circle, 'k');
        hold on;

        %Plot four magnetic field vectors
        plot([0 real(Baa(ii))],[0 imag(Baa(ii))], 'k', 'LineWidth',2);
        plot([0 real(Bbb(ii))],[0 imag(Bbb(ii))], 'b', 'LineWidth',2);
        plot([0 real(Bcc(ii))],[0 imag(Bcc(ii))], 'm', 'LineWidth',2);
        plot([0 real(Bnet(ii))],[0 imag(Bnet(ii))], 'r', 'LineWidth',2);

        axis square;
        axis([-2 2 -2 2]);
        drawnow;
        hold off;

    end
    
end

