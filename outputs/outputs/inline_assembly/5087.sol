pragma solidity ^0.8.0;
contract A {
	uint public non_payable;
	uint public counter = 3;
	uint public x;

	constructor() public {
		x.transfer(non_payable);
	}
}
