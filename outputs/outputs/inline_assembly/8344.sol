pragma solidity ^0.8.0;
contract MutateAssembly10 {
    int[] public arr;
    function test() public view {
        for(uint i = 0; i < arr.length; i++) {
            arr[i]++;
        }
    }
    function add(int x) returns (int answer) {
        for(uint i = 0; i < arr.length; i++) {
            arr[i]+=x;
        }
        return x;
    }
}
