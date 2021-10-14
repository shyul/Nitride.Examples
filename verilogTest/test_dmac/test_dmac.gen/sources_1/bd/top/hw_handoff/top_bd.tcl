
################################################################
# This is a generated script based on design: top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source top_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu3cg-sfvc784-1-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis_tx [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_tx ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $m_axis_tx

  set s_axis_rx [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_rx ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {16} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $s_axis_rx


  # Create ports
  set aclk [ create_bd_port -dir I -type clk -freq_hz 200000000 aclk ]
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set ila_read_access_tick_ack [ create_bd_port -dir O ila_read_access_tick_ack ]
  set ila_read_active [ create_bd_port -dir O ila_read_active ]
  set ila_read_bresp [ create_bd_port -dir O -from 1 -to 0 ila_read_bresp ]
  set ila_read_burst_count [ create_bd_port -dir O -from 32 -to 0 ila_read_burst_count ]
  set ila_read_burst_tick_ack [ create_bd_port -dir O ila_read_burst_tick_ack ]
  set ila_read_ddr_full [ create_bd_port -dir O ila_read_ddr_full ]
  set ila_read_ddr_has_data [ create_bd_port -dir O ila_read_ddr_has_data ]
  set ila_read_ddr_occupation [ create_bd_port -dir O -from 31 -to 0 ila_read_ddr_occupation ]
  set ila_read_index [ create_bd_port -dir O -from 8 -to 0 ila_read_index ]
  set ila_read_state [ create_bd_port -dir O -from 2 -to 0 ila_read_state ]
  set ila_rx_data [ create_bd_port -dir O -from 127 -to 0 ila_rx_data ]
  set ila_rx_fifo_data_ready [ create_bd_port -dir O ila_rx_fifo_data_ready ]
  set ila_rx_fifo_rden [ create_bd_port -dir O ila_rx_fifo_rden ]
  set ila_rx_ready [ create_bd_port -dir O ila_rx_ready ]
  set ila_rx_valid [ create_bd_port -dir O ila_rx_valid ]
  set ila_tx_data [ create_bd_port -dir O -from 127 -to 0 ila_tx_data ]
  set ila_tx_fifo_wren [ create_bd_port -dir O ila_tx_fifo_wren ]
  set ila_tx_prog_empty [ create_bd_port -dir O ila_tx_prog_empty ]
  set ila_tx_ready [ create_bd_port -dir O ila_tx_ready ]
  set ila_tx_valid [ create_bd_port -dir O ila_tx_valid ]
  set ila_write_access_tick_ack [ create_bd_port -dir O ila_write_access_tick_ack ]
  set ila_write_active [ create_bd_port -dir O ila_write_active ]
  set ila_write_bresp [ create_bd_port -dir O -from 1 -to 0 ila_write_bresp ]
  set ila_write_burst_counter [ create_bd_port -dir O -from 31 -to 0 ila_write_burst_counter ]
  set ila_write_burst_tick_ack [ create_bd_port -dir O ila_write_burst_tick_ack ]
  set ila_write_ddr_full [ create_bd_port -dir O ila_write_ddr_full ]
  set ila_write_ddr_has_space [ create_bd_port -dir O ila_write_ddr_has_space ]
  set ila_write_ddr_occupation [ create_bd_port -dir O -from 31 -to 0 ila_write_ddr_occupation ]
  set ila_write_index [ create_bd_port -dir O -from 8 -to 0 ila_write_index ]
  set ila_write_state [ create_bd_port -dir O -from 2 -to 0 ila_write_state ]
  set ilamaxi_araddr [ create_bd_port -dir O -from 47 -to 0 ilamaxi_araddr ]
  set ilamaxi_arlen [ create_bd_port -dir O -from 7 -to 0 ilamaxi_arlen ]
  set ilamaxi_arready [ create_bd_port -dir O ilamaxi_arready ]
  set ilamaxi_arvalid [ create_bd_port -dir O ilamaxi_arvalid ]
  set ilamaxi_awaddr [ create_bd_port -dir O -from 47 -to 0 ilamaxi_awaddr ]
  set ilamaxi_awlen [ create_bd_port -dir O -from 7 -to 0 ilamaxi_awlen ]
  set ilamaxi_awready [ create_bd_port -dir O ilamaxi_awready ]
  set ilamaxi_awvalid [ create_bd_port -dir O ilamaxi_awvalid ]
  set ilamaxi_bready [ create_bd_port -dir O ilamaxi_bready ]
  set ilamaxi_bresp [ create_bd_port -dir O -from 1 -to 0 ilamaxi_bresp ]
  set ilamaxi_bvalid [ create_bd_port -dir O ilamaxi_bvalid ]
  set ilamaxi_rdata [ create_bd_port -dir O -from 127 -to 0 ilamaxi_rdata ]
  set ilamaxi_rlast [ create_bd_port -dir O ilamaxi_rlast ]
  set ilamaxi_rready [ create_bd_port -dir O ilamaxi_rready ]
  set ilamaxi_rvalid [ create_bd_port -dir O ilamaxi_rvalid ]
  set ilamaxi_wdata [ create_bd_port -dir O -from 127 -to 0 ilamaxi_wdata ]
  set ilamaxi_wlast [ create_bd_port -dir O ilamaxi_wlast ]
  set ilamaxi_wready [ create_bd_port -dir O ilamaxi_wready ]
  set ilamaxi_wvalid [ create_bd_port -dir O ilamaxi_wvalid ]
  set read_access_size_bytes [ create_bd_port -dir I -from 16 -to 0 read_access_size_bytes ]
  set read_access_tick [ create_bd_port -dir I read_access_tick ]
  set read_base_address [ create_bd_port -dir I -from 47 -to 0 read_base_address ]
  set read_burst_count [ create_bd_port -dir I -from 31 -to 0 read_burst_count ]
  set read_burst_len [ create_bd_port -dir I -from 8 -to 0 read_burst_len ]
  set read_burst_tick [ create_bd_port -dir O read_burst_tick ]
  set read_busy [ create_bd_port -dir O read_busy ]
  set read_current_burst_address [ create_bd_port -dir O -from 31 -to 0 read_current_burst_address ]
  set read_ddr_size [ create_bd_port -dir I -from 31 -to 0 read_ddr_size ]
  set read_enable [ create_bd_port -dir I read_enable ]
  set read_total_burst_count [ create_bd_port -dir O -from 31 -to 0 read_total_burst_count ]
  set read_underflow_count [ create_bd_port -dir O -from 7 -to 0 read_underflow_count ]
  set read_underflow_ins [ create_bd_port -dir O read_underflow_ins ]
  set rsta_busy [ create_bd_port -dir O rsta_busy ]
  set rx_fifo_data_ready [ create_bd_port -dir I rx_fifo_data_ready ]
  set tx_fifo_empty [ create_bd_port -dir I tx_fifo_empty ]
  set tx_fifo_has_space [ create_bd_port -dir I tx_fifo_has_space ]
  set write_access_size_bytes [ create_bd_port -dir I -from 16 -to 0 write_access_size_bytes ]
  set write_access_tick [ create_bd_port -dir I write_access_tick ]
  set write_base_address [ create_bd_port -dir I -from 47 -to 0 write_base_address ]
  set write_bresp [ create_bd_port -dir O -from 1 -to 0 write_bresp ]
  set write_burst_count [ create_bd_port -dir I -from 31 -to 0 write_burst_count ]
  set write_burst_len [ create_bd_port -dir I -from 8 -to 0 write_burst_len ]
  set write_burst_tick [ create_bd_port -dir O write_burst_tick ]
  set write_busy [ create_bd_port -dir O write_busy ]
  set write_current_burst_address [ create_bd_port -dir O -from 31 -to 0 write_current_burst_address ]
  set write_ddr_size [ create_bd_port -dir I -from 31 -to 0 write_ddr_size ]
  set write_enable [ create_bd_port -dir I write_enable ]
  set write_overflow_count [ create_bd_port -dir O -from 7 -to 0 write_overflow_count ]
  set write_overflow_ins [ create_bd_port -dir O write_overflow_ins ]
  set write_total_burst_count [ create_bd_port -dir O -from 31 -to 0 write_total_burst_count ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.ECC_TYPE {0} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Read_Width_A {128} \
   CONFIG.Read_Width_B {128} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Write_Width_A {128} \
   CONFIG.Write_Width_B {128} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_0

  # Create instance: data_path_dmac_0, and set properties
  set data_path_dmac_0 [ create_bd_cell -type ip -vlnv merckgroup.com:user:data_path_dmac:1.01 data_path_dmac_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net data_path_dmac_0_m_axi [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins data_path_dmac_0/m_axi]
  connect_bd_intf_net -intf_net data_path_dmac_0_m_axis_tx [get_bd_intf_ports m_axis_tx] [get_bd_intf_pins data_path_dmac_0/m_axis_tx]
  connect_bd_intf_net -intf_net s_axis_rx_1 [get_bd_intf_ports s_axis_rx] [get_bd_intf_pins data_path_dmac_0/s_axis_rx]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins data_path_dmac_0/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins data_path_dmac_0/aresetn]
  connect_bd_net -net blk_mem_gen_0_rsta_busy [get_bd_ports rsta_busy] [get_bd_pins blk_mem_gen_0/rsta_busy]
  connect_bd_net -net data_path_dmac_0_ila_read_access_tick_ack [get_bd_ports ila_read_access_tick_ack] [get_bd_pins data_path_dmac_0/ila_read_access_tick_ack]
  connect_bd_net -net data_path_dmac_0_ila_read_active [get_bd_ports ila_read_active] [get_bd_pins data_path_dmac_0/ila_read_active]
  connect_bd_net -net data_path_dmac_0_ila_read_bresp [get_bd_ports ila_read_bresp] [get_bd_pins data_path_dmac_0/ila_read_bresp]
  connect_bd_net -net data_path_dmac_0_ila_read_burst_count [get_bd_ports ila_read_burst_count] [get_bd_pins data_path_dmac_0/ila_read_burst_count]
  connect_bd_net -net data_path_dmac_0_ila_read_burst_tick_ack [get_bd_ports ila_read_burst_tick_ack] [get_bd_pins data_path_dmac_0/ila_read_burst_tick_ack]
  connect_bd_net -net data_path_dmac_0_ila_read_ddr_full [get_bd_ports ila_read_ddr_full] [get_bd_pins data_path_dmac_0/ila_read_ddr_full]
  connect_bd_net -net data_path_dmac_0_ila_read_ddr_has_data [get_bd_ports ila_read_ddr_has_data] [get_bd_pins data_path_dmac_0/ila_read_ddr_has_data]
  connect_bd_net -net data_path_dmac_0_ila_read_ddr_occupation [get_bd_ports ila_read_ddr_occupation] [get_bd_pins data_path_dmac_0/ila_read_ddr_occupation]
  connect_bd_net -net data_path_dmac_0_ila_read_index [get_bd_ports ila_read_index] [get_bd_pins data_path_dmac_0/ila_read_index]
  connect_bd_net -net data_path_dmac_0_ila_read_state [get_bd_ports ila_read_state] [get_bd_pins data_path_dmac_0/ila_read_state]
  connect_bd_net -net data_path_dmac_0_ila_rx_data [get_bd_ports ila_rx_data] [get_bd_pins data_path_dmac_0/ila_rx_data]
  connect_bd_net -net data_path_dmac_0_ila_rx_fifo_data_ready [get_bd_ports ila_rx_fifo_data_ready] [get_bd_pins data_path_dmac_0/ila_rx_fifo_data_ready]
  connect_bd_net -net data_path_dmac_0_ila_rx_fifo_rden [get_bd_ports ila_rx_fifo_rden] [get_bd_pins data_path_dmac_0/ila_rx_fifo_rden]
  connect_bd_net -net data_path_dmac_0_ila_rx_ready [get_bd_ports ila_rx_ready] [get_bd_pins data_path_dmac_0/ila_rx_ready]
  connect_bd_net -net data_path_dmac_0_ila_rx_valid [get_bd_ports ila_rx_valid] [get_bd_pins data_path_dmac_0/ila_rx_valid]
  connect_bd_net -net data_path_dmac_0_ila_tx_data [get_bd_ports ila_tx_data] [get_bd_pins data_path_dmac_0/ila_tx_data]
  connect_bd_net -net data_path_dmac_0_ila_tx_fifo_wren [get_bd_ports ila_tx_fifo_wren] [get_bd_pins data_path_dmac_0/ila_tx_fifo_wren]
  connect_bd_net -net data_path_dmac_0_ila_tx_prog_empty [get_bd_ports ila_tx_prog_empty] [get_bd_pins data_path_dmac_0/ila_tx_prog_empty]
  connect_bd_net -net data_path_dmac_0_ila_tx_ready [get_bd_ports ila_tx_ready] [get_bd_pins data_path_dmac_0/ila_tx_ready]
  connect_bd_net -net data_path_dmac_0_ila_tx_valid [get_bd_ports ila_tx_valid] [get_bd_pins data_path_dmac_0/ila_tx_valid]
  connect_bd_net -net data_path_dmac_0_ila_write_access_tick_ack [get_bd_ports ila_write_access_tick_ack] [get_bd_pins data_path_dmac_0/ila_write_access_tick_ack]
  connect_bd_net -net data_path_dmac_0_ila_write_active [get_bd_ports ila_write_active] [get_bd_pins data_path_dmac_0/ila_write_active]
  connect_bd_net -net data_path_dmac_0_ila_write_bresp [get_bd_ports ila_write_bresp] [get_bd_pins data_path_dmac_0/ila_write_bresp]
  connect_bd_net -net data_path_dmac_0_ila_write_burst_counter [get_bd_ports ila_write_burst_counter] [get_bd_pins data_path_dmac_0/ila_write_burst_counter]
  connect_bd_net -net data_path_dmac_0_ila_write_burst_tick_ack [get_bd_ports ila_write_burst_tick_ack] [get_bd_pins data_path_dmac_0/ila_write_burst_tick_ack]
  connect_bd_net -net data_path_dmac_0_ila_write_ddr_full [get_bd_ports ila_write_ddr_full] [get_bd_pins data_path_dmac_0/ila_write_ddr_full]
  connect_bd_net -net data_path_dmac_0_ila_write_ddr_has_space [get_bd_ports ila_write_ddr_has_space] [get_bd_pins data_path_dmac_0/ila_write_ddr_has_space]
  connect_bd_net -net data_path_dmac_0_ila_write_ddr_occupation [get_bd_ports ila_write_ddr_occupation] [get_bd_pins data_path_dmac_0/ila_write_ddr_occupation]
  connect_bd_net -net data_path_dmac_0_ila_write_index [get_bd_ports ila_write_index] [get_bd_pins data_path_dmac_0/ila_write_index]
  connect_bd_net -net data_path_dmac_0_ila_write_state [get_bd_ports ila_write_state] [get_bd_pins data_path_dmac_0/ila_write_state]
  connect_bd_net -net data_path_dmac_0_ilamaxi_araddr [get_bd_ports ilamaxi_araddr] [get_bd_pins data_path_dmac_0/ilamaxi_araddr]
  connect_bd_net -net data_path_dmac_0_ilamaxi_arlen [get_bd_ports ilamaxi_arlen] [get_bd_pins data_path_dmac_0/ilamaxi_arlen]
  connect_bd_net -net data_path_dmac_0_ilamaxi_arready [get_bd_ports ilamaxi_arready] [get_bd_pins data_path_dmac_0/ilamaxi_arready]
  connect_bd_net -net data_path_dmac_0_ilamaxi_arvalid [get_bd_ports ilamaxi_arvalid] [get_bd_pins data_path_dmac_0/ilamaxi_arvalid]
  connect_bd_net -net data_path_dmac_0_ilamaxi_awaddr [get_bd_ports ilamaxi_awaddr] [get_bd_pins data_path_dmac_0/ilamaxi_awaddr]
  connect_bd_net -net data_path_dmac_0_ilamaxi_awlen [get_bd_ports ilamaxi_awlen] [get_bd_pins data_path_dmac_0/ilamaxi_awlen]
  connect_bd_net -net data_path_dmac_0_ilamaxi_awready [get_bd_ports ilamaxi_awready] [get_bd_pins data_path_dmac_0/ilamaxi_awready]
  connect_bd_net -net data_path_dmac_0_ilamaxi_awvalid [get_bd_ports ilamaxi_awvalid] [get_bd_pins data_path_dmac_0/ilamaxi_awvalid]
  connect_bd_net -net data_path_dmac_0_ilamaxi_bready [get_bd_ports ilamaxi_bready] [get_bd_pins data_path_dmac_0/ilamaxi_bready]
  connect_bd_net -net data_path_dmac_0_ilamaxi_bresp [get_bd_ports ilamaxi_bresp] [get_bd_pins data_path_dmac_0/ilamaxi_bresp]
  connect_bd_net -net data_path_dmac_0_ilamaxi_bvalid [get_bd_ports ilamaxi_bvalid] [get_bd_pins data_path_dmac_0/ilamaxi_bvalid]
  connect_bd_net -net data_path_dmac_0_ilamaxi_rdata [get_bd_ports ilamaxi_rdata] [get_bd_pins data_path_dmac_0/ilamaxi_rdata]
  connect_bd_net -net data_path_dmac_0_ilamaxi_rlast [get_bd_ports ilamaxi_rlast] [get_bd_pins data_path_dmac_0/ilamaxi_rlast]
  connect_bd_net -net data_path_dmac_0_ilamaxi_rready [get_bd_ports ilamaxi_rready] [get_bd_pins data_path_dmac_0/ilamaxi_rready]
  connect_bd_net -net data_path_dmac_0_ilamaxi_rvalid [get_bd_ports ilamaxi_rvalid] [get_bd_pins data_path_dmac_0/ilamaxi_rvalid]
  connect_bd_net -net data_path_dmac_0_ilamaxi_wdata [get_bd_ports ilamaxi_wdata] [get_bd_pins data_path_dmac_0/ilamaxi_wdata]
  connect_bd_net -net data_path_dmac_0_ilamaxi_wlast [get_bd_ports ilamaxi_wlast] [get_bd_pins data_path_dmac_0/ilamaxi_wlast]
  connect_bd_net -net data_path_dmac_0_ilamaxi_wready [get_bd_ports ilamaxi_wready] [get_bd_pins data_path_dmac_0/ilamaxi_wready]
  connect_bd_net -net data_path_dmac_0_ilamaxi_wvalid [get_bd_ports ilamaxi_wvalid] [get_bd_pins data_path_dmac_0/ilamaxi_wvalid]
  connect_bd_net -net data_path_dmac_0_read_burst_tick [get_bd_ports read_burst_tick] [get_bd_pins data_path_dmac_0/read_burst_tick]
  connect_bd_net -net data_path_dmac_0_read_busy [get_bd_ports read_busy] [get_bd_pins data_path_dmac_0/read_busy]
  connect_bd_net -net data_path_dmac_0_read_current_burst_address [get_bd_ports read_current_burst_address] [get_bd_pins data_path_dmac_0/read_current_burst_address]
  connect_bd_net -net data_path_dmac_0_read_total_burst_count [get_bd_ports read_total_burst_count] [get_bd_pins data_path_dmac_0/read_total_burst_count]
  connect_bd_net -net data_path_dmac_0_read_underflow_count [get_bd_ports read_underflow_count] [get_bd_pins data_path_dmac_0/read_underflow_count]
  connect_bd_net -net data_path_dmac_0_read_underflow_ins [get_bd_ports read_underflow_ins] [get_bd_pins data_path_dmac_0/read_underflow_ins]
  connect_bd_net -net data_path_dmac_0_write_bresp [get_bd_ports write_bresp] [get_bd_pins data_path_dmac_0/write_bresp]
  connect_bd_net -net data_path_dmac_0_write_burst_tick [get_bd_ports write_burst_tick] [get_bd_pins data_path_dmac_0/write_burst_tick]
  connect_bd_net -net data_path_dmac_0_write_busy [get_bd_ports write_busy] [get_bd_pins data_path_dmac_0/write_busy]
  connect_bd_net -net data_path_dmac_0_write_current_burst_address [get_bd_ports write_current_burst_address] [get_bd_pins data_path_dmac_0/write_current_burst_address]
  connect_bd_net -net data_path_dmac_0_write_overflow_count [get_bd_ports write_overflow_count] [get_bd_pins data_path_dmac_0/write_overflow_count]
  connect_bd_net -net data_path_dmac_0_write_overflow_ins [get_bd_ports write_overflow_ins] [get_bd_pins data_path_dmac_0/write_overflow_ins]
  connect_bd_net -net data_path_dmac_0_write_total_burst_count [get_bd_ports write_total_burst_count] [get_bd_pins data_path_dmac_0/write_total_burst_count]
  connect_bd_net -net read_access_size_bytes_1 [get_bd_ports read_access_size_bytes] [get_bd_pins data_path_dmac_0/read_access_size_bytes]
  connect_bd_net -net read_access_tick_1 [get_bd_ports read_access_tick] [get_bd_pins data_path_dmac_0/read_access_tick]
  connect_bd_net -net read_base_address_1 [get_bd_ports read_base_address] [get_bd_pins data_path_dmac_0/read_base_address]
  connect_bd_net -net read_burst_count_1 [get_bd_ports read_burst_count] [get_bd_pins data_path_dmac_0/read_burst_count]
  connect_bd_net -net read_burst_len_1 [get_bd_ports read_burst_len] [get_bd_pins data_path_dmac_0/read_burst_len]
  connect_bd_net -net read_ddr_size_1 [get_bd_ports read_ddr_size] [get_bd_pins data_path_dmac_0/read_ddr_size]
  connect_bd_net -net read_enable_1 [get_bd_ports read_enable] [get_bd_pins data_path_dmac_0/read_enable]
  connect_bd_net -net rx_fifo_data_ready_1 [get_bd_ports rx_fifo_data_ready] [get_bd_pins data_path_dmac_0/rx_fifo_data_ready]
  connect_bd_net -net tx_fifo_empty_1 [get_bd_ports tx_fifo_empty] [get_bd_pins data_path_dmac_0/tx_fifo_empty]
  connect_bd_net -net tx_fifo_has_space_1 [get_bd_ports tx_fifo_has_space] [get_bd_pins data_path_dmac_0/tx_fifo_has_space]
  connect_bd_net -net write_access_size_bytes_1 [get_bd_ports write_access_size_bytes] [get_bd_pins data_path_dmac_0/write_access_size_bytes]
  connect_bd_net -net write_access_tick_1 [get_bd_ports write_access_tick] [get_bd_pins data_path_dmac_0/write_access_tick]
  connect_bd_net -net write_base_address_1 [get_bd_ports write_base_address] [get_bd_pins data_path_dmac_0/write_base_address]
  connect_bd_net -net write_burst_count_1 [get_bd_ports write_burst_count] [get_bd_pins data_path_dmac_0/write_burst_count]
  connect_bd_net -net write_burst_len_1 [get_bd_ports write_burst_len] [get_bd_pins data_path_dmac_0/write_burst_len]
  connect_bd_net -net write_ddr_size_1 [get_bd_ports write_ddr_size] [get_bd_pins data_path_dmac_0/write_ddr_size]
  connect_bd_net -net write_enable_1 [get_bd_ports write_enable] [get_bd_pins data_path_dmac_0/write_enable]

  # Create address segments
  assign_bd_address -offset 0xC0000000 -range 0x00004000 -target_address_space [get_bd_addr_spaces data_path_dmac_0/m_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


