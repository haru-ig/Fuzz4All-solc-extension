pragma solidity ^0.8.0;
contract Bug06 {
	constructor() {
	}
	function func1(x) public {
	}
	function func2(x) public {
		func1(x);
	}
}
