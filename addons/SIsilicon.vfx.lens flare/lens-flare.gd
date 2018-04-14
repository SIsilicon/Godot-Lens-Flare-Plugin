tool
extends Node

export(float, 0, 100) var flareStrength = 10.0 setget set_flare_strength
export(float, 0, 2) var flareBias = 1.05 setget set_flare_bias
export(float, 0, 16) var distortion = 2 setget set_flare_distortion

export(int, 0.01, 100) var ghostCount = 7 setget set_ghost_count
export(float, 0, 1) var ghostSpacing = 0.3 setget set_ghost_spacing
export(float, 0, 1) var haloWidth = 0.25 setget set_halo_width

export(Texture) var lensDirt = preload("lens-dirt-default.jpeg") setget set_lens_dirt

var screen;
var material;

func _init():
	screen = MeshInstance.new()
	screen.mesh = CubeMesh.new()
	screen.scale = Vector3(1,1,1) * pow(2.0,30);
	add_child(screen)
	
	screen.material_override = preload("res://addons/sisilicon.vfx.lensflare/lens_flare_shader3D.tres")
	material = screen.material_override

#func _ready():
#	print(get_node('/root').get_hdr())

func set_flare_strength(strength):
	flareStrength = strength
	material.set_shader_param('bloom_scale', strength)

func set_flare_bias(bias):
	flareBias = bias
	material.set_shader_param('bloom_bias', bias)

func set_flare_distortion(distort):
	distortion = distort
	material.set_shader_param('distort', distort)

func set_ghost_count(count):
	ghostCount = count
	material.set_shader_param('ghosts', count)

func set_ghost_spacing(space):
	ghostSpacing = space
	material.set_shader_param('ghost_dispersal', space)

func set_halo_width(width):
	haloWidth = width
	material.set_shader_param('halo_width', width)

func set_lens_dirt(tex):
	lensDirt = tex
	material.set_shader_param('lens_dirt', tex)