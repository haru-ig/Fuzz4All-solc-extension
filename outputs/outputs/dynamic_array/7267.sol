pragma solidity ^0.8.0;
contract Mut {
	address a;
	address[] b ;
	address[] b2 ;
	constructor() {
		b = new address[](0);
		a=msg.sender;
	}
}

contract Bug04 {
	constructor() {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
}
