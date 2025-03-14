pragma solidity ^0.8.0;
contract mutated {
	uint public a;
	constructor() public {
		a = 20;
	}
	function add1() public {
		a -= 1;
	}
}
