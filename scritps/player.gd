extends KinematicBody2D
onready var after  = 0
onready var shadow = preload("res://scenes/shadow.tscn")
onready var particle = get_node("after")
func _ready():
	set_fixed_process(true)
func _fixed_process(delta):
	# if after = 1 then you can create a instance shadow

		

#Basics constrols/////////////////////////////////
#Here's where the after image effect take place
	if Input.is_action_pressed("ui_right"):
		set_pos(get_pos()+Vector2(15,0))
		#if after =1 then after = 0 || elif after =1 then after = 0 it's a loop 
		#this will help to create the after images in certain amount of time
		if after == 1:
			var sha = shadow.instance()
			sha.set_global_pos(Vector2(get_global_pos()))
			get_node("../").add_child(sha)
		if after >= 1:
			after = 0
		elif after <=0:
			after += 1
	if Input.is_action_pressed("ui_left"):
		set_pos(get_pos()+Vector2(-15,0))
		#if after =1 then after = 0 || elif after =1 then after = 0 it's a loop
		#this will help to create the after images in certain amount of time
		if after == 1:
			var sha = shadow.instance()
			sha.set_global_pos(Vector2(get_global_pos()))
			get_node("../").add_child(sha)
			
		if after >= 1: # amout (duration)
			after = 0
		elif after <=0:
			after = 1
	if Input.is_action_pressed("ui_up"):
		set_pos(get_pos()+Vector2(0,-15))
		#if after =1 then after = 0 || elif after =1 then after = 0 it's a loop
		#this will help to create the after images in certain amount of time
		if after == 1:
			var sha = shadow.instance()
			sha.set_global_pos(Vector2(get_global_pos()))
			get_node("../").add_child(sha)
		if after >= 1: # amout (duration)
			after = 0
		elif after <=0:
			after = 1
	if Input.is_action_pressed("ui_down"):
		set_pos(get_pos()+Vector2(0,15))
		if after == 1:
			var sha = shadow.instance()
			sha.set_global_pos(Vector2(get_global_pos()))
			get_node("../").add_child(sha)
		#if after =1 then after = 0 || elif after =1 then after = 0 it's a loop
		#this will help to create the after images in certain amount time
		if after >= 1: # amout (duration)
			after = 0
		elif after <=0:
			after = 1
		
