extends Control

@onready var new_button: Button = $VBoxContainer/New
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	new_button.grab_focus()


func _on_new_pressed() -> void:
	animation_player.play("first_scene")


func _on_load_pressed() -> void:
	GameManager.loaded = true
	get_tree().change_scene_to_file("res://src/Level.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://src/Menu/settings.tscn")


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://src/Level.tscn")
