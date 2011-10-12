//lets try a recursive method, the key here is to keep track of where we split the array, lets use a closure for that
function chop(target, theArray){
	var mid,
		min,
		max,
		len,
		curSplitPoint = 0;
	
	//here we'll return a function that returns a value
	return function(){
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

		if(len === 1 && theArray[mid] !== target){
			return -1;
		}
		else if(theArray[mid] === target){
			return theArray[mid];
		}
		else{
			curSplitPoint += mid;
			chop((target < theArray[mid])? theArray.splice(0,mid) : theArray.splice(mid,len));
		}
	};
}