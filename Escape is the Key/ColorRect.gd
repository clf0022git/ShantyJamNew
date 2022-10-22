extends ColorRect



var minside = false #mouse is not in window

var position 
var baseposition = Vector2(0,0)

func _on_drawingWindow_mouse_entered(): 
	#mouse enters window
	minside = true 
	position = get_rect().size
	print(position)
	print(get_local_mouse_position())

func _on_drawingWindow_mouse_exited():
	#mouse leaves window
	minside = false
	print(minside)
	print(get_local_mouse_position())
	

	
#drawing function
var points_drawn_black = []
var points_drawn_blue = []
var points_drawn_red = []
var points_drawn_white = []

func _process(delta):
	
	if minside == true:
		if Input.is_mouse_button_pressed(1) and ((get_local_mouse_position().x < position.x)) and (get_local_mouse_position().x > baseposition.x) and ((get_local_mouse_position().y < position.y)) and (get_local_mouse_position().y > baseposition.y):
			if paintBrush == Color.black:
				points_drawn_black.append(get_local_mouse_position())
				update()
			if paintBrush == Color.red:
				points_drawn_red.append(get_local_mouse_position())
				update()
			if paintBrush == Color.blue:
				points_drawn_blue.append(get_local_mouse_position())
				update()
			if paintBrush == Color.white:
				points_drawn_white.append(get_local_mouse_position())
				update()
			 
		
#picking colors
#sets intial color/holds the colors
var paintBrush = Color.black

func _on_blackPaint_pressed():
	paintBrush = Color.black
		
func _on_bluePaint_pressed():
	paintBrush = Color.blue
	
func _on_redPaint_pressed():
	paintBrush = Color.red
	
func _on_whitePaint_pressed():
	paintBrush = Color.white
		
func _draw():
		for point in points_drawn_black:
			draw_circle(point, 10, Color.black)
			
		for point in points_drawn_red:
			draw_circle(point, 10, Color.red)
			
		for point in points_drawn_blue:
			draw_circle(point, 10, Color.blue)
			
		for point in points_drawn_white:
			draw_circle(point, 10, Color.white)
			

			





func _on_deleteArt_pressed():
	points_drawn_black.clear()
	points_drawn_blue.clear()
	points_drawn_white.clear()
	points_drawn_red.clear()
	update()
