pragma solidity ^0.8.0;
contract Test {
	struct Test2 {
        uint256 a;
        uint256 b;
        uint256 c;
    }
	uint256[] internal arr;
	constructor() {
        arr.push(uint256(1));
		arr.push(uint256(2));
	}
}
