function SR570_sett(sensitivity)
%demonstration of setting up a voltage sweep on SR570 with instrument delay
%time.

s_preamp=serialport("COM6",9600,"Timeout",5);   %arbitrarily assigned to COM3 with 9600 baud rate and 5 sec timeout

configureTerminator(s_preamp,"CR/LF");  %SR570 manual, page X says al commands must end with carriage return (CR) and linefeed (LF)

%set sensitivity

%page X of user manual.  Sensitivity goes from 0 to 27, with each number
%corresponding to a sensitivity setting.  We will handle this as an
%if/elseif block.  We will use a drop-down menu in App Designer to allow
%the user to select one of these values, which must exactly match what we
%program here.  On page X, SENS is the command to set amplifier
%sensitivity and n ranges between 0 and 27.

if sensitivity==1E-12   %1 pA/V.  double equals == is used in Matlab for logic (true/false comparisons)

    flush(s_preamp)

    writeline(s_preamp,"SENS 0");

elseif sensitivity==2E-12

    flush(s_preamp)

    writeline(s_preamp,"SENS 1");

elseif sensitivity==5E-12

    flush(s_preamp)

    writeline(s_preamp,"SENS 2");

elseif sensitivity==10E-12

    flush(s_preamp)

    writeline(s_preamp,"SENS 3");


elseif sensitivity==20E-12

    flush(s_preamp)

    writeline(s_preamp,"SENS 4");


elseif sensitivity==50E-12

    flush(s_preamp)

   writeline(s_preamp,"SENS 5");


elseif sensitivity==100E-12

    flush(s_preamp)

    writeline(s_preamp,"SENS 6");

elseif sensitivity==200E-12

    flush(s_preamp)

    writeline(s_preamp,"SENS 7");


elseif sensitivity==500E12

    flush(s_preamp)

    writeline(s_preamp,"SENS 8");


elseif sensitivity==1E-9

    flush(s_preamp)

    writeline(s_preamp,"SENS 9");


elseif sensitivity==2E-9

    flush(s_preamp)

    writeline(s_preamp,"SENS 10");


elseif sensitivity==5E-9
disp('test')
    flush(s_preamp)

    writeline(s_preamp,"SENS 11");


elseif sensitivity==10E-9

    flush(s_preamp)

    sen_sett=writeline(s_preamp,"SENS 12");


elseif sensitivity==20E-9

    flush(s_preamp)

    writeline(s_preamp,"SENS 13");


elseif sensitivity==50E-9

    flush(s_preamp)

    writeline(s_preamp,"SENS 14");


elseif sensitivity==100E-9

    flush(s_preamp)

    writeline(s_preamp,"SENS 15");


elseif sensitivity==200E-9

    flush(s_preamp)

    writeline(s_preamp,"SENS 16");


elseif sensitivity==500E-9

    flush(s_preamp)

    writeline(s_preamp,"SENS 17");


elseif sensitivity==1E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 18");


elseif sensitivity==2E-6
    
    flush(s_preamp)

    writeline(s_preamp,"SENS 19");


elseif sensitivity==5E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 20");


elseif sensitivity==10E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 21");

elseif sensitivity==20E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 22");

elseif sensitivity==50E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 23");

elseif sensitivity==100E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 24");

elseif sensitivity==200E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 25");

elseif sensitivity==500E-6

    flush(s_preamp)

    writeline(s_preamp,"SENS 26");

elseif sensitivity==1E-3

    flush(s_preamp)

    writeline(s_preamp,"SENS 27");

end


flush(s_preamp)

writeline(s_preamp,"SUCM 0");  %calibrated gain mode

flush(s_preamp)

writeline(s_preamp,"IOON 0");   %let's leave input offset off for now.  If you want to add this in the future, use the model provided above for gain sensitivity and the commands on page X (all of them for input offset current)

flush(s_preamp)

writeline(s_preamp,"FLTT 5");   %let's disable filters for now.  If you need to add them in the future, use the same if/else if structure above

flush(s_preamp)


%writeline(s_preamp, "GNMD 0");  % Corrected to use the serial object for low noise gain mode

%flush(s_preamp)

writeline(s_preamp, "INVT 0");    %no idea if we need to ivnert or not.  We'll know when we take data.  We'll leave it off for now.

flush(s_preamp)




























end