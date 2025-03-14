pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    function test(uint x) public {
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
