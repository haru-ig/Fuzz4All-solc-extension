pragma solidity ^0.8.0;
contract Bug05 {
	constructor() {
		b = new bytes2[](0);
	}
	function func1() public { }
	function func2() public {
		func1();
	}
}
