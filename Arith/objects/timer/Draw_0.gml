/// @desc <>
var time = alarm_get(0) / 60;

draw_text(80, room_height - 60, string(round(time)));