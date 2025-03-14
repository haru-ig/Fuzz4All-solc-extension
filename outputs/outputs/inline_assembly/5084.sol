pragma solidity ^0.8.0;
contract A {
	uint public counter = 0;
	uint public x = 0;
	constructor() public {
		counter.transfer(this);
	}
}
