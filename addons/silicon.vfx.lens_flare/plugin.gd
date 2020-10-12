tool
extends EditorPlugin


func _enter_tree() -> void:
	add_custom_type(
		"LensFlare", "Node",
		preload("lens_flare.gd"),
		preload("lens_flare_icon.png")
	)


func _exit_tree() -> void:
	remove_custom_type("LensFlare")
