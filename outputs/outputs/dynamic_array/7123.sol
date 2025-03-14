pragma solidity ^0.8.0;
contract Test {
    uint[] storage arr;
    function test(uint y) public {
        uint[] memory oldStorage = arr;
        arr[oldStorage.length] = y;
        uint x = oldStorage[arr.length - 1];
        arr[x] += y;
    }
}
