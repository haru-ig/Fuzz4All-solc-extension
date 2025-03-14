pragma solidity ^0.8.0;
contract Test {
	contract A {
	struct Data {
    uint32[] array;
}
}
    uint[] public arr;
    function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        oldStorage.push(oldStorage[oldStorage.length - 1]);
    }
}
