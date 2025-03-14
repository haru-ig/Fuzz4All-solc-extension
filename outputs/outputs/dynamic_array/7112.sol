pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    function test() public {
        uint[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(oldStorage[i]);
        }
        for (uint i=0; i < arr.length; i++) {
            arr[i] = oldStorage[i] + 1;
        }
    }
}
