tool
extends EditorPlugin

func _enter_tree():
	add_custom_type(
		"LensFlare", "Node",
		preload("res://addons/sisilicon.vfx.lensflare/lens-flare.gd"),
		preload("res://addons/sisilicon.vfx.lensflare/lens_flare_icon.png")
	)

func _exit_tree():
	remove_custom_type("LensFlare")