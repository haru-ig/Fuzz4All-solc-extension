pragma solidity ^0.8.0;
contract Modded {
	address[10] memory a;
	address[10] memory b;
	constructor() {
		a[1] = a[0];
		b[1] = b[0];
	}
}
