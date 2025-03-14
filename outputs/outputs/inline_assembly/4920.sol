pragma solidity ^0.8.0;
contract mutated {
	uint public a;
	constructor() public {
		a = 20;
	}
	function add1() public {
		uint a = 20;
		a += 1;
	}
}
