pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint[] array[];
}
    uint[] private arr;
	function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage;
        oldStorage = arr;
        oldStorage[0] = oldStorage[oldStorage.length - 1];
        array[array.length] = oldStorage;
        array[array.length - 1] = x;
	}
}
