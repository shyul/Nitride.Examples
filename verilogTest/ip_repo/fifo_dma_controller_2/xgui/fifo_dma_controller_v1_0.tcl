# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DEFAULT_BURST_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEFAULT_BURST_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEFAULT_READ_ADDRESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEFAULT_TRANSFER_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEFAULT_WRITE_ADDRESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ID_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.DEFAULT_BURST_COUNT { PARAM_VALUE.DEFAULT_BURST_COUNT } {
	# Procedure called to update DEFAULT_BURST_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_BURST_COUNT { PARAM_VALUE.DEFAULT_BURST_COUNT } {
	# Procedure called to validate DEFAULT_BURST_COUNT
	return true
}

proc update_PARAM_VALUE.DEFAULT_BURST_LEN { PARAM_VALUE.DEFAULT_BURST_LEN } {
	# Procedure called to update DEFAULT_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_BURST_LEN { PARAM_VALUE.DEFAULT_BURST_LEN } {
	# Procedure called to validate DEFAULT_BURST_LEN
	return true
}

proc update_PARAM_VALUE.DEFAULT_READ_ADDRESS { PARAM_VALUE.DEFAULT_READ_ADDRESS } {
	# Procedure called to update DEFAULT_READ_ADDRESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_READ_ADDRESS { PARAM_VALUE.DEFAULT_READ_ADDRESS } {
	# Procedure called to validate DEFAULT_READ_ADDRESS
	return true
}

proc update_PARAM_VALUE.DEFAULT_TRANSFER_SIZE { PARAM_VALUE.DEFAULT_TRANSFER_SIZE } {
	# Procedure called to update DEFAULT_TRANSFER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_TRANSFER_SIZE { PARAM_VALUE.DEFAULT_TRANSFER_SIZE } {
	# Procedure called to validate DEFAULT_TRANSFER_SIZE
	return true
}

proc update_PARAM_VALUE.DEFAULT_WRITE_ADDRESS { PARAM_VALUE.DEFAULT_WRITE_ADDRESS } {
	# Procedure called to update DEFAULT_WRITE_ADDRESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_WRITE_ADDRESS { PARAM_VALUE.DEFAULT_WRITE_ADDRESS } {
	# Procedure called to validate DEFAULT_WRITE_ADDRESS
	return true
}

proc update_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to update ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to validate ID_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.DEFAULT_WRITE_ADDRESS { MODELPARAM_VALUE.DEFAULT_WRITE_ADDRESS PARAM_VALUE.DEFAULT_WRITE_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_WRITE_ADDRESS}] ${MODELPARAM_VALUE.DEFAULT_WRITE_ADDRESS}
}

proc update_MODELPARAM_VALUE.DEFAULT_READ_ADDRESS { MODELPARAM_VALUE.DEFAULT_READ_ADDRESS PARAM_VALUE.DEFAULT_READ_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_READ_ADDRESS}] ${MODELPARAM_VALUE.DEFAULT_READ_ADDRESS}
}

proc update_MODELPARAM_VALUE.DEFAULT_TRANSFER_SIZE { MODELPARAM_VALUE.DEFAULT_TRANSFER_SIZE PARAM_VALUE.DEFAULT_TRANSFER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_TRANSFER_SIZE}] ${MODELPARAM_VALUE.DEFAULT_TRANSFER_SIZE}
}

proc update_MODELPARAM_VALUE.DEFAULT_BURST_COUNT { MODELPARAM_VALUE.DEFAULT_BURST_COUNT PARAM_VALUE.DEFAULT_BURST_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_BURST_COUNT}] ${MODELPARAM_VALUE.DEFAULT_BURST_COUNT}
}

proc update_MODELPARAM_VALUE.DEFAULT_BURST_LEN { MODELPARAM_VALUE.DEFAULT_BURST_LEN PARAM_VALUE.DEFAULT_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_BURST_LEN}] ${MODELPARAM_VALUE.DEFAULT_BURST_LEN}
}

proc update_MODELPARAM_VALUE.ID_WIDTH { MODELPARAM_VALUE.ID_WIDTH PARAM_VALUE.ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ID_WIDTH}] ${MODELPARAM_VALUE.ID_WIDTH}
}

