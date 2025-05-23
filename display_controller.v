module display_controller (
    input [1:0] status
);
    always @(*) begin
        case (status)
            2'b00: $display("Temperature Status: NORMAL");
            2'b01: $display("Temperature Status: WARNING");
            2'b10: $display("Temperature Status: CRITICAL");
            default: $display("Unknown Status");
        endcase
    end
endmodule

