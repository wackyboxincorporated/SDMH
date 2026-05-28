extends CharacterBody3D

# Reference the AnimationPlayer node
@onready var animation_player = $Duende/AnimationPlayer 

func _ready():
	# Example: Play the 'Idle' animation on startup
	play_animation("Idle")

func play_animation(anim_name: String):
	# Check if the animation exists to avoid errors
	if animation_player.has_animation(anim_name):
		animation_player.play(anim_name)
	else:
		print("Animation not found: ", anim_name)
