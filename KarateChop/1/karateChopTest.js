test("Chop1ShouldReturn1", function(){
	var expected = -1;
	//the array passed into chop is assumed to be sorted
	var actual = chop(1,[3,4,7,9,32]);
	
	equal(expected,actual);
});


test("Chop4ShouldReturn2", function(){
	var expected = 2;
	//the array passed into chop is assumed to be sorted
	var actual = chop(4,[3,4,7,9,32]);
	
	equal(actual,expected);
});

test("Chop9ShouldReturn4", function(){
	var expected = 5;
	//the array passed into chop is assumed to be sorted
	var actual = chop(32,[3,4,7,9,32]);
	
	equal(actual,expected);
});