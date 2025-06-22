extends Node2D
signal hovered #Cursor encima
signal hovered_off #Cursor no encima del carton digital

func _ready() -> void:
	
	get_parent().connect_card_signals(self)

func _on_area_2d_mouse_entered() -> void:
	print("Encima del carton")
	emit_signal("hovered", self)

func _on_area_2d_mouse_exited() -> void:
	print("no encima del carton")
	emit_signal("hovered_off", self)
