pragma solidity ^0.8.0;
contract Test {
    uint[] private arr = new uint[](3);
    function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(x);
        }
        for (uint i=0; i < arr.length; i++) {
            uint y = arr[i];
            arr[i] = x + y;
        }
    }
}
