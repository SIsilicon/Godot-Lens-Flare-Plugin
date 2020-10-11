extends Panel

onready var lens_flare = $"../LensFlare"


func _on_FlareStrength_value_changed(value: float) -> void:
	lens_flare.flare_strength = value


func _on_FlareBias_value_changed(value: float) -> void:
	lens_flare.flare_bias = value


func _on_FlareBlur_value_changed(value: float) -> void:
	lens_flare.flare_blur = value


func _on_Distortion_value_changed(value: float) -> void:
	lens_flare.distortion = value


func _on_GhostCount_value_changed(value: int) -> void:
	lens_flare.ghost_count = value


func _on_GhostSpacing_value_changed(value: float) -> void:
	lens_flare.ghost_spacing = value


func _on_HaloWidth_value_changed(value: float) -> void:
	lens_flare.halo_width = value


func _on_DistortQuality_item_selected(ID: int) -> void:
	lens_flare.distortion_quality = ID


func _on_StreakStrength_value_changed(value: float) -> void:
	lens_flare.streak_strength = value
