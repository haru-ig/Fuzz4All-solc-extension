pragma solidity ^0.8.0;
contract Fixed {
	constructor() public {
		uint[] memory a;
		a[1] = a[0];
	}
}
