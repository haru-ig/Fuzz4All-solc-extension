pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		string memory a = "a bytes memory a";
		uint[128] memory b;
		b[1] = b[0];
	}
}
