//desc num1, operant, num2

var num1 = argument0;
var operant = argument1;
var num2 = argument2;
var ans;

switch operant {
	case 1:
	ans = num1 + num2;
	break;
	
	case 2:
	ans = num1 - num2;
	break;
	
	case 3:
	ans = num1 * num2;
	break;
	
	case 4:
	ans = round(num1/num2);
	break;
}

return ans;