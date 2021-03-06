extends KinematicBody2D

export var MOTION_SPEED = 5000
const IDLE_SPEED = 10

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	#motion
	var motion = Vector2()
	
	
	
	if (Input.is_action_pressed("ui_up")):
		motion +=  Vector2(0,-1)
		self.set_rotd(0)
	
	
	if (Input.is_action_pressed("ui_down")):
		motion +=  Vector2(0,1)
		self.set_rotd(180)
	
	if (Input.is_action_pressed("ui_left")):
		motion +=  Vector2(-1,0)
		self.set_rotd(90)
	
	if (Input.is_action_pressed("ui_right")):
		motion +=  Vector2(1,0)
		self.set_rotd(-90)
	
	motion = motion.normalized()*MOTION_SPEED*delta
	move(motion)