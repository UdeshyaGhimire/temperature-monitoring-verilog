module temp_monitor (
    input [7:0] temp,
    output reg [1:0] status
);
    // Status Codes: 00 - Normal, 01 - Warning, 10 - Critical
    always @(*) begin
        if (temp < 8'd50)
            status = 2'b00; // Normal
        else if (temp < 8'd70)
            status = 2'b01; // Warning
        else
            status = 2'b10; // Critical
    end
endmodule
