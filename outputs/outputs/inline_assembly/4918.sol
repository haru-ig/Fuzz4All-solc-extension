pragma solidity ^0.8.0;
contract mutated {
	uint public a;
	contract mutated2 {
		constructor() public {
			a = 20;
		}
		function add1() public {
			a = a + 1;
		}
	}
	constructor() public {
		a = 30;
		mutated2(0).add1;
	}
}
