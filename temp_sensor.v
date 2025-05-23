module temp_sensor (
    output reg [7:0] temperature
);
    initial begin
        temperature = 8'd20; // start at 20°C
        forever begin
            #10 temperature = temperature + 1; // increase by 1°C every 10 time units
        end
    end
endmodule
