pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array[];
}
    uint[] private arr;
	function test(uint x) public {
        uint[] memory oldStorage = arr;
		arr.push(oldStorage[0]);
		arr.push(oldStorage[oldStorage.length - 1]);
	}
}
