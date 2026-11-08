function SR830_lockin_sett
%remotely programs settings other than sensitivity and time constant

s_lockin=serialport("COM5",9600,"Timeout",5);

configureTerminator(s_lockin,"CR");

flushinput(s_lockin);  

writeline(s_lockin,"RMOD 2");   %low noise reserve

flushinput(s_lockin);  

writeline(s_lockin,"OFSL 1");   %12 dB/Oct slope

flushinput(s_lockin);  

writeline(s_lockin,"SYNC 0");   %sync filter off

flushinput(s_lockin);  

writeline(s_lockin,"DDEF 1,1,0"); %Ch 1 to R

flushinput(s_lockin);  

writeline(s_lockin,"DDEF 2,1,0"); %Ch 2 to Theta

flushinput(s_lockin);  

