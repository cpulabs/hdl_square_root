
`default_nettype none

module square_root32_element #(
		parameter P_IN_N = 4,
		parameter P_DFF = 1
	)(
		input wire iCLOCK,
		input wire inRESET,
		//Input
		input wire iDATA_REQ,
		output wire oDATA_BUSY,
		input wire [P_IN_N/2-1:0] iDATA_P,
		input wire [31:0] iDATA_I,
		//Output
		output wire oDATA_VALID,
		input wire iDATA_BUSY,
		output wire [P_IN_N/2-1:0] oDATA_P,
		output wire [31:0] oDATA_I
	);
	
	function [P_IN_N/2-1:0] func_cell_gen;
		input [P_IN_N/2-1:0] func_data_p;
		input [31:0] func_data_i;
		reg [P_IN_N-1:0] func_pri_data;
		begin
			func_pri_data = func_data_p * func_data_p;
			if(func_data_i[31:32-P_IN_N] >= func_pri_data)begin
				func_cell_gen = func_data_p;
			end
			else begin
				func_cell_gen = {func_data_p[P_IN_N/2-1:1], 1'b0};
			end
		end
	endfunction
		
	
	generate 
		if(P_DFF)begin
			//D-FF Delay
			reg b_buffer_req;
			reg [P_IN_N/2-1:0] b_buffer_p;
			reg [31:0] b_buffer_i;
			
			always@(posedge iCLOCK or negedge inRESET)begin
				if(!inRESET)begin
					b_buffer_req <= 1'b0;
				end
				else if(iDATA_BUSY)begin
					b_buffer_req <= b_buffer_req;
				end
				else begin
					b_buffer_req <= iDATA_REQ;
				end
			end
			
			always@(posedge iCLOCK or negedge inRESET)begin
				if(!inRESET)begin
					b_buffer_p <= {P_IN_N/2{1'b0}};
				end
				else if(iDATA_BUSY)begin
					b_buffer_p <= b_buffer_p;
				end
				else begin
					b_buffer_p <= func_cell_gen(iDATA_P, iDATA_I);
				end
			end
			
			always@(posedge iCLOCK or negedge inRESET)begin
				if(!inRESET)begin
					b_buffer_i <= 32'h0;
				end 
				else if(iDATA_BUSY)begin
					b_buffer_i <= b_buffer_i;
				end
				else begin
					b_buffer_i <= iDATA_I;
				end
			end
			
			assign oDATA_VALID = b_buffer_req;
			assign oDATA_P = b_buffer_p;
			assign oDATA_I = b_buffer_i;
		end
		else begin
			//Combination
			assign oDATA_VALID = iDATA_REQ;
			assign oDATA_P = func_cell_gen(iDATA_P, iDATA_I);
			assign oDATA_I = iDATA_I;
		end
	endgenerate
	
	assign oDATA_BUSY = iDATA_BUSY;

	
endmodule

`default_nettype wire 
