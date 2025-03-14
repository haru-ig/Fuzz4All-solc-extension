pragma solidity ^0.8.0;
contract Mutated {
	bool a[1024];
	constructor() public {a[1023] = false;}
}
