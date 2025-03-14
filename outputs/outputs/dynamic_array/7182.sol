pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		uint16[] memory a;
		a[1] = a[0];
	}
}
contract ModdedConstructor {
	constructor() public {
		uint16[] memory a;
		a[1] = a[0];
	}
}
