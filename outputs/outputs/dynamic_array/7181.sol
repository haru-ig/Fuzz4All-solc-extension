pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		uint[] calldata a;
		a.push(a[0]);
		uint16 b;
		uint[] memory c;
		c.push(c[0]);
		uint[32] calldata d;
	}
}
contract ModdedConstructor {
	constructor() public {
		uint[] calldata a;
		a.push(a[0]);
	}
}
