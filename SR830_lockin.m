function SR830_lockin(sensitivity,time_constant)
%controls the SR830 lock-in amplifier.  Sensitivity ranges from 0-26
%following page 5-6 of the user manual.  Same for time constant (0-19).




s_lockin=serialport("COM5",9600,"Timeout",5);

configureTerminator(s_lockin,"CR");


if sensitivity==2E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 0");

elseif sensitivity==5E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 1");

elseif sensitivity==10E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 2");

elseif sensitivity==20E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 3");  

elseif sensitivity==50E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 4");

elseif sensitivity==100E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 5");

elseif sensitivity==200E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 6");

 elseif sensitivity==500E-9;

    flush(s_lockin)

    writeline(s_lockin,"SENS 7");

 elseif sensitivity==1E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 8");

 elseif sensitivity==2E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 9");

 elseif sensitivity==5E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 10");

elseif sensitivity==10E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 11");

elseif sensitivity==20E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 12");

elseif sensitivity==50E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 13");

elseif sensitivity==100E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 14");

elseif sensitivity==200E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 15");

elseif sensitivity==500E-6;

    flush(s_lockin)

    writeline(s_lockin,"SENS 16");

elseif sensitivity==1E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 17");

elseif sensitivity==2E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 18");

 elseif sensitivity==5E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 19");

 elseif sensitivity==10E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 20");

 elseif sensitivity==20E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 21");

 elseif sensitivity==50E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 22");

 elseif sensitivity==100E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 23");

 elseif sensitivity==200E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 24");

 elseif sensitivity==500E-3;

    flush(s_lockin)

    writeline(s_lockin,"SENS 25");

elseif sensitivity==1;

    flush(s_lockin)

    writeline(s_lockin,"SENS 26");

end


if time_constant==10E-6;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 0");

elseif time_constant==30E-6;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 1");

elseif time_constant==100E-6;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 2");

elseif time_constant==300E-6;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 3");

elseif time_constant==1E-3;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 4");

elseif time_constant==3E-3;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 5");

elseif time_constant==10E-3;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 6");

elseif time_constant==30E-3;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 7");

elseif time_constant==100E-3;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 8");

elseif time_constant==300E-3;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 9");

elseif time_constant==1;

    flush(s_lockin)

    writeline(s_lockin,"OFLT 10");

end

 