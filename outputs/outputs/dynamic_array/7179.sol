pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		uint[] memory a;
		a[1] = a[0];
		uint16 b;
		uint[] memory c;
		c[1] = c[0];
		uint[32] memory d;
	}
}

contract ModdedConstructor {
	constructor() public {
		uint[] memory a;
		a[1] = a[0];
	}
}
