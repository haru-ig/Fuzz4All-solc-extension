pragma solidity ^0.8.0;
contract complex {
	uint public a;
	constructor() public {
		a = 1200;
	}
	function modifyA() public {
		a -= 50;
	}
	function modifyB() public {
		a += 10;
	}
}
