pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
    uint[] private arr = new uint[](1);
    function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        arr.push(oldStorage[oldStorage.length - 1]);
    }
}
