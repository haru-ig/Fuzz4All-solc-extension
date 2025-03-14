pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	uint public a;
	constructor() public {
		a;
	}
	function add1() public {
		a + 1;
	}
}
