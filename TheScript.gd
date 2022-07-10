extends ColorRect

export var file_name : String = "DesktopBG";

func _ready():
	yield(get_tree(), "idle_frame");
	yield(get_tree(), "idle_frame");
	yield(get_tree(), "idle_frame");
	var image_to_save = get_viewport().get_texture().get_data();
	image_to_save.flip_y();
	image_to_save.save_png("./" + file_name + ".png");
	get_tree().quit();
