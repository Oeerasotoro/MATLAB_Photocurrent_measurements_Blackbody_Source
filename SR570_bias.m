function SR570_bias(bias_level,status);

%sets SR570 current preamp to a desired bias level and turns the output on
%or off (status).  Input bias levels in units of V.

s_preamp=serialport("COM6",9600,"Timeout",5);   %arbitrarily assigned to COM3 with 9600 baud rate and 5 sec timeout

configureTerminator(s_preamp,"CR/LF");  %SR570 manual, page X says al commands must end with carriage return (CR) and linefeed (LF)

flush(s_preamp);

if status==1

    writeline(s_preamp,"BSON 1");   %turns output on

elseif status==0

    writeline(s_preamp,"BSON 0");   %turns output off

end

bias_level_mV=bias_level.*1000; %user manual says intrument expects mV input.

%bias_level_cmd=sprintf("BLSV %0.f",bias_level_mV); %passes the bias level variable input by the user and adds it to the BLSV string (page X of user manual) with no decimal places (%.0f)

flush(s_preamp);

writeline(s_preamp,sprintf("BSLV %0.f",bias_level_mV)); %I have no idea if this will work.  You'll have to mess around with it.  The idea is to pass a variable to BLSV, format into text string, send to instrument.


