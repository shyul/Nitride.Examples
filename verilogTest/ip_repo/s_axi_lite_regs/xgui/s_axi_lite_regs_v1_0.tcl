# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REGS_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REGS_LSB" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REGS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STRB_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.REGS_DEPTH { PARAM_VALUE.REGS_DEPTH } {
	# Procedure called to update REGS_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGS_DEPTH { PARAM_VALUE.REGS_DEPTH } {
	# Procedure called to validate REGS_DEPTH
	return true
}

proc update_PARAM_VALUE.REGS_LSB { PARAM_VALUE.REGS_LSB } {
	# Procedure called to update REGS_LSB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGS_LSB { PARAM_VALUE.REGS_LSB } {
	# Procedure called to validate REGS_LSB
	return true
}

proc update_PARAM_VALUE.REGS_WIDTH { PARAM_VALUE.REGS_WIDTH } {
	# Procedure called to update REGS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGS_WIDTH { PARAM_VALUE.REGS_WIDTH } {
	# Procedure called to validate REGS_WIDTH
	return true
}

proc update_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to update STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to validate STRB_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.STRB_WIDTH { MODELPARAM_VALUE.STRB_WIDTH PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STRB_WIDTH}] ${MODELPARAM_VALUE.STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.REGS_LSB { MODELPARAM_VALUE.REGS_LSB PARAM_VALUE.REGS_LSB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGS_LSB}] ${MODELPARAM_VALUE.REGS_LSB}
}

proc update_MODELPARAM_VALUE.REGS_WIDTH { MODELPARAM_VALUE.REGS_WIDTH PARAM_VALUE.REGS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGS_WIDTH}] ${MODELPARAM_VALUE.REGS_WIDTH}
}

proc update_MODELPARAM_VALUE.REGS_DEPTH { MODELPARAM_VALUE.REGS_DEPTH PARAM_VALUE.REGS_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGS_DEPTH}] ${MODELPARAM_VALUE.REGS_DEPTH}
}

