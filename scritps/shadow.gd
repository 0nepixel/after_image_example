extends Sprite
var opacity  #

func _ready():
	set_fixed_process(true)
	opacity =1 #
func _fixed_process(delta):

	opacity  -= (0.05)   # change this value to make the effect longer or shorter 
	set_opacity(opacity) # erase this if you want a 100% opace after image effect
	if opacity <=0:   # if opacity = 0 (or less) the node get destroyed itself
		queue_free()
	#set_pos(get_pos()+Vector2(0,-opacity*4))
	print(opacity)
# if you want a 100% opace after image effect, you have to erase the set_opacity(opacity) and set
# the Blend mode into Mix
