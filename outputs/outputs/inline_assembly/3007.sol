pragma solidity ^0.8.0;

contract A is C {
	event NewEvent (uint x);
	mapping (uint => uint) public myMap;

	function newx() public {
		uint a = getX(x);
		setX(x, a+1);
	}

	function emitMyEvent (uint x) public emits NewEvent(x) {
		myMap[x] = x;
	}
}
