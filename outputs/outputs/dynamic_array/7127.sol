pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] public array;
}
    uint[] memory arr;
    function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        arr.push(oldStorage[oldStorage.length - 1]);
    }
}
