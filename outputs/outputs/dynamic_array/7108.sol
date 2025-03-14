pragma solidity ^0.8.0;
contract Test {
    uint[] internal arr;
    function test01() public {
        uint[] internal oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(oldStorage[i]);
        }
        for (uint i=0; i < arr.length; i++) {
            uint x = arr[i];
            arr[i] = oldStorage[i] + x;
        }
    }
    function test() public {
        uint[] internal oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            arr.push(oldStorage[i]);
        }
        for (uint i=0; i < arr.length; i++) {
            arr[i] = oldStorage[i] + 1;
        }
    }
}
