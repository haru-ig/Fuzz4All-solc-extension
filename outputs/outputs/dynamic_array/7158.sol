pragma solidity ^0.8.0;
contract Test {
	uint256[] internal arr;
	constructor() {
        arr.push(uint256(1));
	}
	function test (uint256[] memory _newarr) public {
        for (uint256 i = 0; i < _newarr.length; i++) {
            arr[i] = _newarr[i];
        }
	}
}
