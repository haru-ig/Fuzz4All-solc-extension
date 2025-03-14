pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    function test01() public {
        uint[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(oldStorage[i]);
        }
        for (uint i=0; i < arr.length; i++) {
            uint x = arr[int(i)];
            arr[int(i)] = oldStorage[i] + x;
        }
    }
    function test() public {
        uint[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(oldStorage[i]);
        }
        for (uint i=0; i < arr.length * 2; i++) {
            arr[int(i)] = oldStorage[i] + 1;
        }
    }
}
