pragma solidity ^0.8.0;
contract Mut2 {
	address a;
	constructor() {
		a=msg.sender;
	}
	address[] b;
	constructor() {
		a = msg.sender;
		b = new address[](0);
	}
}
contract Bug03 {
	constructor() {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
}
