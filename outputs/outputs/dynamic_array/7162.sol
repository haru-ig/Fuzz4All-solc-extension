pragma solidity ^0.8.0;
contract Test {
	constructor() {
		arr = [uint256(1)];
		arr.push(uint256(2));
	}
	uint256[] internal arr;
}
