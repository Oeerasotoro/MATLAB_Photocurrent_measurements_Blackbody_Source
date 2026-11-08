function [rms_array, time_array, average_RMS] = SR830_lockin_acquire(pause_time, averages)
    % Acquires data using our previous example. Pause_time is time in seconds
    % to wait for the data to settle. Averages is the number of averages taken
    % for each bias level. 

    % Serial port setup for lock-in amplifier
    s_lockin = serialport("COM5", 9600, "Timeout", 5);
    configureTerminator(s_lockin, "CR");
    writeline(s_lockin,"OUTX 0")

    % Clear input and output buffers
    flush(s_lockin);

    % Pause to allow the instrument to settle
    pause(pause_time);

    % Rate control for timing
    rate = rateControl(5);  % 5 Hz corresponds to 200 ms
    reset(rate);  % Clears the "rate" buffer

    % Initialize arrays for storing data
    rms_array = zeros(1, averages);  % Initialize rms_array with zeros
    time_array = zeros(1, averages);  % Initialize time_array with zeros
    
        for nn = 1:averages
        % Send command to read RMS value from lock-in amplifier
        rms = writeread(s_lockin,"OUTP? 3");

        % Clear input and output buffer
        flush(s_lockin);

        % Wait to maintain rate
        waitfor(rate);

        % Store numeric rms value in array
        rms_array(:,nn) = rms;  % Convert the response to a numeric value

        % Record time for each reading
        data_time = rate.TotalElapsedTime;
        time_array(:,nn) = data_time;
    end

    % Calculate the average RMS value
average_RMS = mean(rms_array);  % Calculate mean of numeric rms_array
end