pragma solidity ^0.8.0;
contract Bug04 {
	constructor(address _a) {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
}
