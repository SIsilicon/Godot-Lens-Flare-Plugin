tool
extends Node

export(float, 0, 100) var flare_strength := 10.0 setget set_flare_strength
export(float, 0, 16) var flare_bias := 1.05 setget set_flare_bias
export(float, 0, 10) var flare_blur := 2.0 setget set_flare_blur;

export(int, "Low", "Medium", "High") var distortion_quality := 0 setget set_distortion_quality;
export(float, 0, 50) var distortion := 2.0 setget set_flare_distortion

export(int, 0.01, 100) var ghost_count := 7 setget set_ghost_count
export(float, 0, 1) var ghost_spacing := 0.3 setget set_ghost_spacing
export(float, 0, 1) var halo_width := 0.25 setget set_halo_width

export(float, 0, 1) var streak_strength := 0.5 setget set_streak_strength

export(Texture) var lens_dirt = preload("lens-dirt-default.jpeg") setget set_lens_dirt

var screen := MeshInstance.new()
var material := preload("lens-flare-shader.tres").duplicate()


func _init() -> void:
	screen.mesh = CubeMesh.new()
	screen.scale = Vector3(1,1,1) * pow(2.0,30);
	add_child(screen)
	screen.material_override = material
	
	set_flare_strength(flare_strength)
	set_flare_bias(flare_bias)
	set_flare_distortion(distortion)
	set_distortion_quality(distortion_quality)
	set_ghost_count(ghost_count)
	set_ghost_spacing(ghost_spacing)
	set_halo_width(halo_width)
	set_streak_strength(streak_strength)
	set_flare_blur(flare_blur)
	set_lens_dirt(lens_dirt)


func set_flare_strength(value: float) -> void:
	flare_strength = value
	material.set_shader_param("bloom_scale", value)


func set_flare_bias(value: float) -> void:
	flare_bias = value
	material.set_shader_param("bloom_bias", value)


func set_flare_distortion(value: float) -> void:
	distortion = value
	material.set_shader_param("distort", value)


func set_distortion_quality(value: int) -> void:
	distortion_quality = value
	material.set_shader_param("distortion_quality", value)


func set_ghost_count(value: int) -> void:
	ghost_count = value
	material.set_shader_param("ghosts", value)


func set_ghost_spacing(value: float) -> void:
	ghost_spacing = value
	material.set_shader_param("ghost_dispersal", value)


func set_halo_width(value: float) -> void:
	halo_width = value
	material.set_shader_param("halo_width", value)


func set_streak_strength(value: float) -> void:
	streak_strength = value
	material.set_shader_param("streak_strength", value)


func set_flare_blur(value: float) -> void:
	flare_blur = value
	material.set_shader_param("lod", value)


func set_lens_dirt(value: Texture) -> void:
	lens_dirt = value
	material.set_shader_param("lens_dirt", value)
