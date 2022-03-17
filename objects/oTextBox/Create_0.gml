instance_deactivate_all(true);
x = room_width / 2;
y = room_height / 2;
boxMsg = "This is a test message, we'll see how long it has to go to reach" +
	"another line inside the text box.\nPress any key to continue...";

boxWidth = sprite_get_width(sTextBox) *.9;
canStart = false;
alarm_set(0, 30);
