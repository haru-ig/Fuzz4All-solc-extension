pragma solidity ^0.8.0;
contract Mut2 {
	address[] a ;
	address a2 ;
	address[] a3 ;
	constructor() {
		a = new address[](0);
		a2 = msg.sender;
		a3 = a[2] = new address[](2,2);
	}
}
contract Bug05 {
	constructor() {
	}
	function func1() public {
		func2();
	}
	function func2() public {
		func1();
	}
}
