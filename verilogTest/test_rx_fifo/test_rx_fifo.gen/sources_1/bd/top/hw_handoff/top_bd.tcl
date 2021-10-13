
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
set scripts_vivado_version 2021.1
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
  set m_axis_rx [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rx ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $m_axis_rx


  # Create ports
  set aclk [ create_bd_port -dir I -type clk -freq_hz 200000000 aclk ]
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set data_clk [ create_bd_port -dir I -type clk -freq_hz 250000000 data_clk ]
  set data_format [ create_bd_port -dir I -from 2 -to 0 data_format ]
  set data_in [ create_bd_port -dir I -from 127 -to 0 data_in ]
  set data_ready [ create_bd_port -dir O data_ready ]
  set data_valid [ create_bd_port -dir I data_valid ]
  set data_write_state [ create_bd_port -dir O -from 7 -to 0 data_write_state ]
  set fifo_prog_empty [ create_bd_port -dir O fifo_prog_empty ]
  set fifo_prog_full [ create_bd_port -dir O fifo_prog_full ]
  set fifo_rd_data [ create_bd_port -dir O -from 127 -to 0 fifo_rd_data ]
  set fifo_rd_empty [ create_bd_port -dir O fifo_rd_empty ]
  set fifo_rd_en [ create_bd_port -dir O fifo_rd_en ]
  set fifo_rd_rst_busy [ create_bd_port -dir O fifo_rd_rst_busy ]
  set fifo_rd_valid [ create_bd_port -dir O fifo_rd_valid ]
  set fifo_srst [ create_bd_port -dir O fifo_srst ]
  set fifo_wr_data [ create_bd_port -dir O -from 127 -to 0 fifo_wr_data ]
  set fifo_wr_en [ create_bd_port -dir O fifo_wr_en ]
  set fifo_wr_full [ create_bd_port -dir O fifo_wr_full ]
  set fifo_wr_rst_busy [ create_bd_port -dir O fifo_wr_rst_busy ]
  set rx_enable [ create_bd_port -dir I rx_enable ]
  set wr_data_buf [ create_bd_port -dir O -from 119 -to 0 wr_data_buf ]

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value {256} \
   CONFIG.Empty_Threshold_Negate_Value {257} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Builtin_FIFO} \
   CONFIG.Full_Threshold_Assert_Value {523} \
   CONFIG.Full_Threshold_Negate_Value {522} \
   CONFIG.Input_Data_Width {128} \
   CONFIG.Output_Data_Width {128} \
   CONFIG.Programmable_Empty_Type {Single_Programmable_Empty_Threshold_Constant} \
   CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} \
   CONFIG.Read_Clock_Frequency {200} \
   CONFIG.Valid_Flag {true} \
   CONFIG.Write_Clock_Frequency {250} \
 ] $fifo_generator_0

  # Create instance: rx_fifo_axis_0, and set properties
  set rx_fifo_axis_0 [ create_bd_cell -type ip -vlnv merckgroup.com:user:rx_fifo_axis:1.02 rx_fifo_axis_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net rx_fifo_axis_0_m_axis_rx [get_bd_intf_ports m_axis_rx] [get_bd_intf_pins rx_fifo_axis_0/m_axis_rx]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins rx_fifo_axis_0/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins rx_fifo_axis_0/aresetn]
  connect_bd_net -net data_clk_1 [get_bd_ports data_clk] [get_bd_pins rx_fifo_axis_0/data_clk]
  connect_bd_net -net data_format_1 [get_bd_ports data_format] [get_bd_pins rx_fifo_axis_0/data_format]
  connect_bd_net -net data_in_1 [get_bd_ports data_in] [get_bd_pins rx_fifo_axis_0/data_in]
  connect_bd_net -net data_valid_1 [get_bd_ports data_valid] [get_bd_pins rx_fifo_axis_0/data_valid]
  connect_bd_net -net fifo_generator_0_dout [get_bd_ports fifo_rd_data] [get_bd_pins fifo_generator_0/dout] [get_bd_pins rx_fifo_axis_0/fifo_rd_data]
  connect_bd_net -net fifo_generator_0_empty [get_bd_ports fifo_rd_empty] [get_bd_pins fifo_generator_0/empty] [get_bd_pins rx_fifo_axis_0/fifo_rd_empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_ports fifo_wr_full] [get_bd_pins fifo_generator_0/full] [get_bd_pins rx_fifo_axis_0/fifo_wr_full]
  connect_bd_net -net fifo_generator_0_prog_empty [get_bd_ports fifo_prog_empty] [get_bd_pins fifo_generator_0/prog_empty]
  connect_bd_net -net fifo_generator_0_prog_full [get_bd_ports fifo_prog_full] [get_bd_pins fifo_generator_0/prog_full] [get_bd_pins rx_fifo_axis_0/fifo_prog_full]
  connect_bd_net -net fifo_generator_0_rd_rst_busy [get_bd_ports fifo_rd_rst_busy] [get_bd_pins fifo_generator_0/rd_rst_busy] [get_bd_pins rx_fifo_axis_0/fifo_rd_rst_busy]
  connect_bd_net -net fifo_generator_0_valid [get_bd_ports fifo_rd_valid] [get_bd_pins fifo_generator_0/valid] [get_bd_pins rx_fifo_axis_0/fifo_rd_valid]
  connect_bd_net -net fifo_generator_0_wr_rst_busy [get_bd_ports fifo_wr_rst_busy] [get_bd_pins fifo_generator_0/wr_rst_busy] [get_bd_pins rx_fifo_axis_0/fifo_wr_rst_busy]
  connect_bd_net -net rx_enable_1 [get_bd_ports rx_enable] [get_bd_pins rx_fifo_axis_0/rx_enable]
  connect_bd_net -net rx_fifo_axis_0_data_ready [get_bd_ports data_ready] [get_bd_pins rx_fifo_axis_0/data_ready]
  connect_bd_net -net rx_fifo_axis_0_data_write_state [get_bd_ports data_write_state] [get_bd_pins rx_fifo_axis_0/ila_data_write_state]
  connect_bd_net -net rx_fifo_axis_0_fifo_rd_clk [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins rx_fifo_axis_0/fifo_rd_clk]
  connect_bd_net -net rx_fifo_axis_0_fifo_rd_en [get_bd_ports fifo_rd_en] [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins rx_fifo_axis_0/fifo_rd_en]
  connect_bd_net -net rx_fifo_axis_0_fifo_srst [get_bd_ports fifo_srst] [get_bd_pins fifo_generator_0/srst] [get_bd_pins rx_fifo_axis_0/fifo_srst]
  connect_bd_net -net rx_fifo_axis_0_fifo_wr_clk [get_bd_pins fifo_generator_0/wr_clk] [get_bd_pins rx_fifo_axis_0/fifo_wr_clk]
  connect_bd_net -net rx_fifo_axis_0_fifo_wr_data [get_bd_ports fifo_wr_data] [get_bd_pins fifo_generator_0/din] [get_bd_pins rx_fifo_axis_0/fifo_wr_data]
  connect_bd_net -net rx_fifo_axis_0_fifo_wr_en [get_bd_ports fifo_wr_en] [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins rx_fifo_axis_0/fifo_wr_en]
  connect_bd_net -net rx_fifo_axis_0_wr_data_buf [get_bd_ports wr_data_buf] [get_bd_pins rx_fifo_axis_0/ila_wr_data_buf]

  # Create address segments


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


