`ifndef AHB_ENUM_TYPES__SV
`define AHB_ENUM_TYPES__SV

package ahb_enum_types;
  typedef enum bit {AHB_READ = 1'b0, AHB_WRITE = 1'b1} ahb_read_write_enum;
  typedef enum bit[2:0] {AHB_DONE=3'b000, AHB_ERROR=3'b001, AHB_LAST=3'b010, AHB_RETRACT=3'b011, AHB_WAIT=3'b100} ahb_response_type_enum;
endpackage

`endif
