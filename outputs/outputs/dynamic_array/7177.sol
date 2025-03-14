pragma solidity ^0.8.0;
contract Mutated {
	constructor() public {
		uint[] memory a = new uint[](2);
		uint[] memory z = new uint[](2);
		a[1] = a[0];
		z[0] = z[1];
	}
}
