`timescale 1ns/1ps

module top_tb;
    wire [7:0] temp;
    wire [1:0] status;

    temp_sensor tsensor (.temperature(temp));
    temp_monitor tmonitor (.temp(temp), .status(status));
    display_controller dcontroller (.status(status));

    initial begin
        $monitor("Time: %0t | Temp: %d | Status: %b", $time, temp, status);
        #150 $finish;
    end
endmodule
