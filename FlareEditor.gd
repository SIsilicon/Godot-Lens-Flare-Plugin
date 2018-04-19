extends Panel

onready var lens_flare = $"../LensFlare"

func _process(delta):
	for i in $Settings.get_children():
		match i.name:
			"FlareStrength":
				lens_flare.flareStrength = \
				$Settings/FlareStrength/HSlider.value
			"FlareBias":
				lens_flare.flareBias = \
				$Settings/FlareBias/HSlider.value
			"Distortion":
				lens_flare.distortion = \
				$Settings/Distortion/HSlider.value
			"GhostCount":
				lens_flare.ghostCount = \
				$Settings/GhostCount/HSlider.value
			"GhostSpacing":
				lens_flare.ghostSpacing = \
				$Settings/GhostSpacing/HSlider.value
			"HaloWidth":
				lens_flare.haloWidth = \
				$Settings/HaloWidth/HSlider.value
