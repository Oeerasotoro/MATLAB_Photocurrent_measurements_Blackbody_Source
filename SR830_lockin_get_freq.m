function frequency=SR830_lockin_get_freq
%gets chopper frequency measured by the lock-in amplifier

% Serial port setup for lock-in amplifier
    s_lockin = serialport("COM5", 9600, "Timeout", 5);
    configureTerminator(s_lockin, "CR");
    writeline(s_lockin,"OUTX 0")

    % Clear input and output buffers
    flush(s_lockin);

    frequency=writeread(s_lockin,"FREQ?");