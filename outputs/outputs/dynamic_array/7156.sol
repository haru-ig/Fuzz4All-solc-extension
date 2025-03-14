pragma solidity ^0.8.0;
contract Test {
	uint256 arr2[5];
	constructor() {
		for (uint i = 0; i <2 ; i++) {
			arr2[i] = uint256((214)*i);
		}
		uint256 newVal2 = uint256((77)*5);
		for (uint i = 0; i < 5; i++) {
			arr2[i] = newVal2;
			revert();
		}
	}
}
