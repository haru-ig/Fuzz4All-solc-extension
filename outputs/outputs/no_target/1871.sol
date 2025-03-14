pragma solidity ^0.8.0;
contract Mutate40 {
	uint public a;
	uint public b;
	uint public x;
	constructor(uint a, uint b) public {
		this.a = a;
		this.b = b;
		this.x = b;
	}
}
