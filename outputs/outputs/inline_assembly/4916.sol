pragma solidity ^0.8.0;
contract mutated {
	constructor() public {
		a = 30;
	}
	uint public a;
	function add1() public {
		a = a + 1;
	}
}
