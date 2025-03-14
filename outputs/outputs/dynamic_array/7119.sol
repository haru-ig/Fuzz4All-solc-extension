pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    function test(uint x) public {
        uint[] memory oldStorage = arr;
        arr[oldStorage.length] = x;
        uint y = arr[0];
        arr[0] += y;
    }
}
