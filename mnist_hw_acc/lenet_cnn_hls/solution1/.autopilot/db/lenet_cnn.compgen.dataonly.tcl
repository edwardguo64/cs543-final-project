# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTL {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
image_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
parameters { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
fc6_output { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict CTL $port_CTL


