pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		uint[128] memory a;
		a[1] = a[0];
		uint[128] memory b;
		b[1] = b[0];
	}
}
