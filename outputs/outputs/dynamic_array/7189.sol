pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		uint[32] memory a;
		a[1000] = 1;
		uint[32] memory b;
		b[1000] = 2;
		uint[32] memory c;
		c[1000] = 3;
		uint[32] memory d;
		d[1000] = 4;
	}
}
