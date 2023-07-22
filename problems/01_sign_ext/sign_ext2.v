module sign_ext2(
    input [11:0]imm,

    output [31:0]ext_imm
);

wire [19:0]ext = imm[11] ? -1 : 0;

assign ext_imm = {ext, imm};

endmodule
