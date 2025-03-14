pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
    string[] array2;
}
    uint[] private arr;
	function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        arr.push(oldStorage[oldStorage.length - 1]);
        Data storage dataStruct = Data({array : oldStorage, array2 : []});
	}
}
