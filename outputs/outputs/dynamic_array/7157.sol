pragma solidity ^0.8.0;
contract TestModifier {
	uint256[] internal arr;
	constructor() {
		uint256 i;
		for (i = 0; i < 1000; i++){
            arr.push(uint256(1));
		}
	}
}
