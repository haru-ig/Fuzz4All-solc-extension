pragma solidity ^0.8.0;
contract Modded {
	constructor() payable {
		uint[] memory a;
		a[1] = a[0];
		uint[] memory b;
		b[1] = b[0];
	}
}
