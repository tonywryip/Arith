/// @desc <>
scr_key_pressP2();

if switchKey {
	var num1copy = num1
	num1 = ds_queue_head(num2);
	var num2queue = ds_queue_create();
	ds_queue_copy(num2queue, num2);
	var trash = ds_queue_dequeue(num2queue);
	ds_queue_clear(num2);
	ds_queue_enqueue(num2, num1copy);
	repeat(ds_queue_size(num2queue)) {
		ds_queue_enqueue(num2, ds_queue_dequeue(num2queue))
	}
	ds_queue_destroy(num2queue);
}
	

if calc and operant != 0 {
	ans = scr_calc(num1, operant, ds_queue_dequeue(num2));
	if ans == goal {
		scoreboard.p2_score ++;
		ans = 0;
		num1 = irandom_range(0,12);
		ds_queue_enqueue(num2, irandom_range(0,12));
	} else {
		num1 = ans;
		ds_queue_enqueue(num2, irandom_range(0,12));
		ans = 0;
	}
	operant = 0;
}