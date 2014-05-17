clear globals variables;
addpath(genpath(fullfile(fileparts(which(mfilename)), '..', '..', 'code')));
dbstop if error;

net = dissertation_args();
net.sets.niters = 2000;
net.sets.axon_noise = net.sets.axon_noise * [linspace(1, 1,500) linspace(1,0.0,500) 0*linspace(0.1,0.0,1000) ]./net.sets.D_CC_INIT(1);%1E-5;%0.0005;
net.sets.dirname    = fullfile(net.sets.dirname, mfilename);

r_looper(net, 25); % run 25 network instances


