pragma solidity ^0.8.0;
contract MutatedExamples7 {
    function mutated1(address, uint[]) public returns(uint[]) {
        return [];
    }
    function mutated2(address, uint[]) public returns(uint[10] memory, uint[10]) {
        uint[10] memory arr = new uint[](10);
        for (uint i = 0; i < 10; i++) {
            arr[i] = 0;
        }
        return (arr, arr);
    }
}
