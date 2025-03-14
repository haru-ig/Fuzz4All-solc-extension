pragma solidity ^0.8.0;
contract Bug05 {
	event MyEvent();
	constructor(address _a) { }
	function getBug() public {
		MyEvent.emit(address(0));
		MyEvent.emit(address(0), 0);
	}
	function func1() public { }
	function func2() public {
		func1();
	}
}
