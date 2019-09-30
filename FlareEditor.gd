extends Panel

onready var lens_flare = $"../LensFlare"

func _on_FlareStrength_value_changed(value):
	lens_flare.flareStrength = value

func _on_FlareBias_value_changed(value):
	lens_flare.flareBias = value

func _on_FlareBlur_value_changed(value):
	lens_flare.flareBlur = value

func _on_Distortion_value_changed(value):
	lens_flare.distortion = value

func _on_GhostCount_value_changed(value):
	lens_flare.ghostCount = value

func _on_GhostSpacing_value_changed(value):
	lens_flare.ghostSpacing = value

func _on_HaloWidth_value_changed(value):
	lens_flare.haloWidth = value

func _on_DistortQuality_item_selected(ID):
	lens_flare.distortionQuality = ID
