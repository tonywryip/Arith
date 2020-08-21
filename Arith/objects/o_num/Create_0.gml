/// @desc <>
//randomize();

num1 = irandom_range(0, 12);
num2 = ds_queue_create();

queuedNum = 5

repeat(queuedNum) {
ds_queue_enqueue(num2, irandom_range(0, 12));
}

operant = 0;

ans = 0;