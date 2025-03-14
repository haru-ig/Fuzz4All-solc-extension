pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		uint[1][128] memory b;
		b[1][128] = b[0][128];
	}
}
