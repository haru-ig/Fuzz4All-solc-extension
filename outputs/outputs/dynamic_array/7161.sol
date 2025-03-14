pragma solidity ^0.8.0;
contract Test {
	uint[][] internal arr;
	constructor() {
        arr.push([]);
		arr.push([uint256(1)]);
		arr.push([uint256(2)]);
	}
}
