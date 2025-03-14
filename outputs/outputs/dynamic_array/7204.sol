pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		string memory a = "a bytes memory a";
		uint[] memory b;
		b[1] = b[0];
	}
}



function func() public pure returns (uint) {
	return uint(bytes(0).length);
}
