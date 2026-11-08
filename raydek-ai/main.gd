extends Node3D

var xr_Interface: XRInterface

func _ready() -> void:
	xr_Interface = XRServer.find_interface("OpenXR")
	
	if xr_Interface and xr_Interface.is_initialized():
		print("OpenXR iniciado")
		
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		get_viewport().use_xr = true
	else:
		print("OpenXR no iniciado")
