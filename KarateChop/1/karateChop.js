function chop(target, theArray){
	var mid,
		min,
		max,
		len;
	
	//first make sure the array is an array, it has a length, and that target is a number
	if(!theArray || 
		Object.prototype.toString.call(theArray) !== "[object Array]" || 
		!theArray.length || 
		isNaN(parseInt(target,10))) {
			console.log("not an array");
			return -1;
	}
	
	len = theArray.length;
	min = 0;
	max = theArray.length - 1;
	mid = Math.floor(max / 2);

	if(theArray[mid] === target){
		return mid;
	}
	
	while(min < max){
		//if the target is less than the array's middle set the new max to the middle, keep the min the same
		if(target < theArray[mid]){
			max = mid - 1;
		}
		else{
			min = mid + 1;
		}	
		
		mid = Math.floor((min + max) / 2);
		
		if(theArray[mid] === target){
			return mid+1;
		}
	}
	
	return -1;
};