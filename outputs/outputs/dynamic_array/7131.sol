pragma solidity ^0.8.0;
contract Test {
	struct Data {
    	uint32[][1] array;
}
	uint[] public arr;
	function test(uint x) public {
		arr.push(x);
		uint32[1][] memory oldStorage = arr;
		arr.push(oldStorage[oldStorage.length - 1]);

	}
}
