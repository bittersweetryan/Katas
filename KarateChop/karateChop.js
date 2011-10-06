function chop(int, theArray){
	//first make sure the array is an array
	console.log(Object.prototype.toString.call(theArray));
	if(!theArray || Object.prototype.toString.call(theArray) !== "[object Array]"){
		ok(false,"Not an array");
	}
};