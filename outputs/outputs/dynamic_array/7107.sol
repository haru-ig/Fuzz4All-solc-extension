pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    constructor() public {
        uint[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(oldStorage[i]);
        }
        for (uint i=0; i < arr.length; i++) {
            uint x = arr[i];
            arr[i] = oldStorage[i] + x;
        }
    }
    function test01() public {
        uint[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(oldStorage[i]);
        }
        for (uint i=0; i < arr.length; i++) {
            uint x = arr[i];
            arr[i] = oldStorage[i] + x;
        }
    }
}
