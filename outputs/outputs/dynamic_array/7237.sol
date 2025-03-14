pragma solidity ^0.8.0;
contract Mutant {
	address[] private p;
	constructor () {
		address[] memory c = new address[](2);
		for (index = 0; index < 2; ++index) {
			c[index] = "0x01";
		}
		p = c;
	}
}
