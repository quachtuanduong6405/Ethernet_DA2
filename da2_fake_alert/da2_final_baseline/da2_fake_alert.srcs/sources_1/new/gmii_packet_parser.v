`timescale 1ns / 1ps

module gmii_packet_parser(
    input  wire          gmii_rx_clk,
    input  wire          rst_n,
    
    input  wire [7:0]    gmii_rxd,
    input  wire          gmii_rx_dv,
    input  wire          gmii_rx_er,
    
    output reg  [47:0]   destination_mac,
    output reg  [47:0]   source_mac,
    output reg  [15:0]   ether_type,             // IPv4 = 0x0800
    output reg           header_valid,           // Ba cái destination_mac, source_mac và Ether_type đã đọc xong
    output reg           frame_done,
    output reg           frame_error      
);
    
    localparam [2:0]
        ST_IDLE     = 3'd0,
        ST_PREAMBLE = 3'd1,
        ST_DST_MAC  = 3'd2,
        ST_SRC_MAC  = 3'd3,
        ST_ETH_TYPE = 3'd4,
        ST_PAYLOAD  = 3'd5;
       
    reg [2:0] state;
    reg [2:0] preamble_count;
    reg [2:0] byte_count;
    
    always @(posedge gmii_rx_clk or negedge rst_n)
        if(!rst_n) begin
            state               <= ST_IDLE;
            preamble_count      <= 3'd0;
            byte_count          <= 3'd0;
            destination_mac     <= 48'd0;
            source_mac          <= 48'd0;
            ether_type          <= 16'd0;
            
            header_valid        <= 1'b0;
            frame_done          <= 1'b0;
            
            frame_error         <= 1'b0;
        end else begin
            header_valid        <= 1'b0;
            frame_done          <= 1'b0;
            
            if (gmii_rx_dv && gmii_rx_er) begin
                state           <= ST_IDLE;
                frame_error     <= 1'b1;
            end else begin
                case(state)
                    ST_IDLE: begin
                        preamble_count      <= 3'd0;
                        byte_count          <= 3'd0;
                        frame_error         <= 1'd0;
                        if (gmii_rx_dv && (gmii_rxd == 8'h55)) begin
                            state           <= ST_PREAMBLE;
                            preamble_count  <= 3'd1;
                        end
                    end
                    
                    ST_PREAMBLE: begin
                        if(!gmii_rx_dv) begin
                            state           <= ST_IDLE;
                            frame_error     <= 1'b1;
                        end else if (gmii_rxd == 8'h55) begin
                            if (preamble_count < 3'd7)
                                preamble_count <= preamble_count + 1'b1;
                        end else if ((gmii_rxd == 8'hD5) && (preamble_count == 3'd7)) begin
                            
                            state           <= ST_DST_MAC;
                            byte_count      <= 3'd0;
                            destination_mac <= 48'd0;
                            source_mac      <= 48'd0;
                            ether_type      <= 16'd0;
                        end else begin
                            state           <= ST_IDLE;
                            frame_error     <= 1'b1;
                        end
                    end
                    
                    ST_DST_MAC: begin
                        if (!gmii_rx_dv) begin  
                            state           <= ST_IDLE;
                            frame_error     <= 1'b1;
                        end begin   
                            destination_mac <= {destination_mac[39:0], gmii_rxd};
                            if (byte_count == 3'd5) begin
                                state       <= ST_SRC_MAC;
                                byte_count  <= 3'd0;
                            end else
                                byte_count  <= byte_count + 1'b1;
                            end
                        end
                        
                     ST_SRC_MAC: begin
                        if (!gmii_rx_dv) begin
                            state           <= ST_IDLE;
                            frame_error     <= 1'b1;
                        end else begin
                            source_mac      <= {source_mac[39:0], gmii_rxd};
                            
    
        
    
    
endmodule
