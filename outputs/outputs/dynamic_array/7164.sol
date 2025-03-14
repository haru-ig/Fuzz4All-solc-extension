pragma solidity ^0.8.0;
contract Test {
	uint256[] internal arr;
	constructor() {
        delete uint256[2];
		arr.push(uint256(1));
		arr.push(uint256(2));
	}
}
