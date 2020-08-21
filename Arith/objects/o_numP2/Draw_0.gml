/// @desc <>
draw_set_font(f_default);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(80, halfy, string(num1));

var draw;
switch operant {
	case 0:
	draw = " "
	break;
	
	case 1:
	draw = "+";
	break;
	
	case 2:
	draw = "-";
	break;
	
	case 3:
	draw = "x";
	break;
	
	case 4:
	draw = "/";
	break;
}

draw_text(160, halfy, draw);

//drawing num2
var num2backup;
num2backup = ds_queue_create();
ds_queue_copy(num2backup, num2);

draw_text(240, halfy, string(ds_queue_dequeue(num2backup)));

draw_set_font(f_defaultS);
var gap = 1
repeat(ds_queue_size(num2) - 1) {
	draw_text(240, halfy - 10 - 80 * gap, string(ds_queue_dequeue(num2backup)));
	gap ++;
}
draw_set_font(f_default);

ds_queue_destroy(num2backup);

draw_text(320, halfy, " = ");

draw_text(400, halfy, string(ans));
