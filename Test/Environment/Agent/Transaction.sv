`ifndef AHB_TRANSACTION__SV
`define AHB_TRANSACTION__SV

class ahb_transaction #(ADDR_WIDH=32, DATA_WIDTH=32) extends uvm_sequence_item;

        //Declaring variable for address.
        rand bit [ADDR_WIDTH-1:0] m_address;

        //Declaring variable to hold the read data sent from the slave.
        rand ahb_read_write_enum m_read_write;
 
        //Declaring variable for write data.
        rand bit [DATA_WIDTH-1:0] m_wdata;
 
        //Declaring variable for read data;
        rand bit [DATA_WIDTH-1:0] m_rdata;
 
        rand ahb_response_type_enum m_response_type;
 
  `uvm_object_param_utils_begin (ahb_transanction #(ADDR_WIDTH,DATA_WIDTH))
        `uvm_field_int(m_address, UVM_ALL_ON)
        `uvm_field_int(m_wdata, UVM_ALL_ON)
        `uvm_field_int(m_rdata, UVM_ALL_ON)
        `uvm_field_enum(ahb_read_write_enum, m_read_write, UVM_ALL_ON) 
        `uvm_field_enum(ahb_response_type_enum, m_response_type, UVM_ALL_ON)
  `uvm_object_param_utils_end

constraint c_address { m_address >= 0;}

endclass : ahb_transaction
`endif

