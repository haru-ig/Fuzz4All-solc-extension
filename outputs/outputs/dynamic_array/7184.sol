pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		uint[] memory a;
		a[1] = a[0];
		uint[] memory b;
		b[1] = b[0];
		uint[32] memory c;
		c[1] = c[0];
		uint[32] memory d;
		d[1] = d[0];
	}
}
