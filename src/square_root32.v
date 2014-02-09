
`default_nettype none 


module square_root32(
		input wire iCLOCK,
		input wire inRESET,
		//Input Data
		input wire iDATA_REQ,
		output wire oDATA_BUSY,
		input wire [31:0] iDATA,
		//Output
		output wire oDATA_VALID,
		input wire iDATA_BUSY,
		output wire [15:0] oDATA
	);

	localparam P_L_ELEMENTS0_DFF = 0;
	localparam P_L_ELEMENTS1_DFF = 1;
	localparam P_L_ELEMENTS2_DFF = 0;
	localparam P_L_ELEMENTS3_DFF = 1;
	localparam P_L_ELEMENTS4_DFF = 0;
	localparam P_L_ELEMENTS5_DFF = 1;
	localparam P_L_ELEMENTS6_DFF = 0;
	localparam P_L_ELEMENTS7_DFF = 1;
	localparam P_L_ELEMENTS8_DFF = 0;
	localparam P_L_ELEMENTS9_DFF = 1;
	localparam P_L_ELEMENTS10_DFF = 0;
	localparam P_L_ELEMENTS11_DFF = 1;
	localparam P_L_ELEMENTS12_DFF = 0;
	localparam P_L_ELEMENTS13_DFF = 1;
	localparam P_L_ELEMENTS14_DFF = 0;
	localparam P_L_ELEMENTS15_DFF = 1;

	
	
	
	wire [15:0] elements_out_valid;
	wire [15:0] element_out_busy;
	wire [0:0] element_out_p0;
	wire [1:0] element_out_p1;
	wire [2:0] element_out_p2;
	wire [3:0] element_out_p3;
	wire [4:0] element_out_p4;
	wire [5:0] element_out_p5;
	wire [6:0] element_out_p6;
	wire [7:0] element_out_p7;
	wire [8:0] element_out_p8;
	wire [9:0] element_out_p9;
	wire [10:0] element_out_p10;
	wire [11:0] element_out_p11;
	wire [12:0] element_out_p12;
	wire [13:0] element_out_p13;
	wire [14:0] element_out_p14;
	wire [15:0] element_out_p15;
	wire [31:0] element_out_i[0:15];
	
	

	square_root32_element #(2, P_L_ELEMENTS0_DFF) SQUARE_ELEMENTS0(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(iDATA_REQ),
		.oDATA_BUSY(oDATA_BUSY),
		.iDATA_P(1'b1),
		.iDATA_I(iDATA),
		//Output
		.oDATA_VALID(elements_out_valid[0]),
		.iDATA_BUSY(element_out_busy[0]),
		.oDATA_P(element_out_p0),
		.oDATA_I(element_out_i[0])
	);

	square_root32_element #(4, P_L_ELEMENTS1_DFF) SQUARE_ELEMENTS1(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[0]),
		.oDATA_BUSY(element_out_busy[0]),
		.iDATA_P({element_out_p0, 1'b1}),
		.iDATA_I(element_out_i[0]),
		//Output
		.oDATA_VALID(elements_out_valid[1]),
		.iDATA_BUSY(element_out_busy[1]),
		.oDATA_P(element_out_p1),
		.oDATA_I(element_out_i[1])
	);
	
	square_root32_element #(6, P_L_ELEMENTS2_DFF) SQUARE_ELEMENTS2(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[1]),
		.oDATA_BUSY(element_out_busy[1]),
		.iDATA_P({element_out_p1, 1'b1}),
		.iDATA_I(element_out_i[1]),
		//Output
		.oDATA_VALID(elements_out_valid[2]),
		.iDATA_BUSY(element_out_busy[2]),
		.oDATA_P(element_out_p2),
		.oDATA_I(element_out_i[2])
	);
	
	square_root32_element #(8, P_L_ELEMENTS3_DFF) SQUARE_ELEMENTS3(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[2]),
		.oDATA_BUSY(element_out_busy[2]),
		.iDATA_P({element_out_p2, 1'b1}),
		.iDATA_I(element_out_i[2]),
		//Output
		.oDATA_VALID(elements_out_valid[3]),
		.iDATA_BUSY(element_out_busy[3]),
		.oDATA_P(element_out_p3),
		.oDATA_I(element_out_i[3])
	);
	
	square_root32_element #(10, P_L_ELEMENTS4_DFF) SQUARE_ELEMENTS4(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[3]),
		.oDATA_BUSY(element_out_busy[3]),
		.iDATA_P({element_out_p3, 1'b1}),
		.iDATA_I(element_out_i[3]),
		//Output
		.oDATA_VALID(elements_out_valid[4]),
		.iDATA_BUSY(element_out_busy[4]),
		.oDATA_P(element_out_p4),
		.oDATA_I(element_out_i[4])
	);
	
	square_root32_element #(12, P_L_ELEMENTS5_DFF) SQUARE_ELEMENTS5(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[4]),
		.oDATA_BUSY(element_out_busy[4]),
		.iDATA_P({element_out_p4, 1'b1}),
		.iDATA_I(element_out_i[4]),
		//Output
		.oDATA_VALID(elements_out_valid[5]),
		.iDATA_BUSY(element_out_busy[5]),
		.oDATA_P(element_out_p5),
		.oDATA_I(element_out_i[5])
	);
	
	square_root32_element #(14, P_L_ELEMENTS6_DFF) SQUARE_ELEMENTS6(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[5]),
		.oDATA_BUSY(element_out_busy[5]),
		.iDATA_P({element_out_p5, 1'b1}),
		.iDATA_I(element_out_i[5]),
		//Output
		.oDATA_VALID(elements_out_valid[6]),
		.iDATA_BUSY(element_out_busy[6]),
		.oDATA_P(element_out_p6),
		.oDATA_I(element_out_i[6])
	);
	
	square_root32_element #(16, P_L_ELEMENTS7_DFF) SQUARE_ELEMENTS7(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[6]),
		.oDATA_BUSY(element_out_busy[6]),
		.iDATA_P({element_out_p6, 1'b1}),
		.iDATA_I(element_out_i[6]),
		//Output
		.oDATA_VALID(elements_out_valid[7]),
		.iDATA_BUSY(element_out_busy[7]),
		.oDATA_P(element_out_p7),
		.oDATA_I(element_out_i[7])
	);
	
	square_root32_element #(18, P_L_ELEMENTS8_DFF) SQUARE_ELEMENTS8(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[7]),
		.oDATA_BUSY(element_out_busy[7]),
		.iDATA_P({element_out_p7, 1'b1}),
		.iDATA_I(element_out_i[7]),
		//Output
		.oDATA_VALID(elements_out_valid[8]),
		.iDATA_BUSY(element_out_busy[8]),
		.oDATA_P(element_out_p8),
		.oDATA_I(element_out_i[8])
	);
	
	square_root32_element #(20, P_L_ELEMENTS9_DFF) SQUARE_ELEMENTS9(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[8]),
		.oDATA_BUSY(element_out_busy[8]),
		.iDATA_P({element_out_p8, 1'b1}),
		.iDATA_I(element_out_i[8]),
		//Output
		.oDATA_VALID(elements_out_valid[9]),
		.iDATA_BUSY(element_out_busy[9]),
		.oDATA_P(element_out_p9),
		.oDATA_I(element_out_i[9])
	);
	
	square_root32_element #(22, P_L_ELEMENTS10_DFF) SQUARE_ELEMENTS10(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[9]),
		.oDATA_BUSY(element_out_busy[9]),
		.iDATA_P({element_out_p9, 1'b1}),
		.iDATA_I(element_out_i[9]),
		//Output
		.oDATA_VALID(elements_out_valid[10]),
		.iDATA_BUSY(element_out_busy[10]),
		.oDATA_P(element_out_p10),
		.oDATA_I(element_out_i[10])
	);
	
	square_root32_element #(24, P_L_ELEMENTS11_DFF) SQUARE_ELEMENTS11(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[10]),
		.oDATA_BUSY(element_out_busy[10]),
		.iDATA_P({element_out_p10, 1'b1}),
		.iDATA_I(element_out_i[10]),
		//Output
		.oDATA_VALID(elements_out_valid[11]),
		.iDATA_BUSY(element_out_busy[11]),
		.oDATA_P(element_out_p11),
		.oDATA_I(element_out_i[11])
	);
	
	square_root32_element #(26, P_L_ELEMENTS12_DFF) SQUARE_ELEMENTS12(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[11]),
		.oDATA_BUSY(element_out_busy[11]),
		.iDATA_P({element_out_p11, 1'b1}),
		.iDATA_I(element_out_i[11]),
		//Output
		.oDATA_VALID(elements_out_valid[12]),
		.iDATA_BUSY(element_out_busy[12]),
		.oDATA_P(element_out_p12),
		.oDATA_I(element_out_i[12])
	);
	
	square_root32_element #(28, P_L_ELEMENTS13_DFF) SQUARE_ELEMENTS13(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[12]),
		.oDATA_BUSY(element_out_busy[12]),
		.iDATA_P({element_out_p12, 1'b1}),
		.iDATA_I(element_out_i[12]),
		//Output
		.oDATA_VALID(elements_out_valid[13]),
		.iDATA_BUSY(element_out_busy[13]),
		.oDATA_P(element_out_p13),
		.oDATA_I(element_out_i[13])
	);
	
	square_root32_element #(30, P_L_ELEMENTS14_DFF) SQUARE_ELEMENTS14(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[13]),
		.oDATA_BUSY(element_out_busy[13]),
		.iDATA_P({element_out_p13, 1'b1}),
		.iDATA_I(element_out_i[13]),
		//Output
		.oDATA_VALID(elements_out_valid[14]),
		.iDATA_BUSY(element_out_busy[14]),
		.oDATA_P(element_out_p14),
		.oDATA_I(element_out_i[14])
	);
	
	square_root32_element #(32, P_L_ELEMENTS15_DFF) SQUARE_ELEMENTS15(
		//System
		.iCLOCK(iCLOCK),
		.inRESET(inRESET),
		//Input
		.iDATA_REQ(elements_out_valid[14]),
		.oDATA_BUSY(element_out_busy[14]),
		.iDATA_P({element_out_p14, 1'b1}),
		.iDATA_I(element_out_i[14]),
		//Output
		.oDATA_VALID(elements_out_valid[15]),
		.iDATA_BUSY(element_out_busy[15]),
		.oDATA_P(element_out_p15),
		.oDATA_I(element_out_i[15])
	);
	
	assign oDATA_VALID = elements_out_valid[15];
	assign element_out_busy[15] = iDATA_BUSY;
	assign oDATA = element_out_p15;
	
endmodule


`default_nettype wire 
