pragma solidity ^0.8.0;
contract Bug05 {
	constructor(address _a){
	}
	contract {
		uint[] a;
	}
	function func2(contract t) public {
		t.a;
	}
	function callfunc1() public {
		func2(a);
	}
}
