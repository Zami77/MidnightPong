boxMsg = "This is a test message, we'll see how long it has to go to reach" +
	"another line inside the text box.\nPress any key to continue...";

boxWidth = sprite_get_width(sTextBox) *.9;
stringHeight = string_height(boxMsg);
canStart = false;
alarm_set(0, 30);
instance_deactivate_all(true);