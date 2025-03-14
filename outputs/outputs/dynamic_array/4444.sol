pragma solidity ^0.8.0;
contract Mutated3 {
    mapping (bytes32 => bool) myMap;
    constructor() public{
        myMap[1]=true;
        myMap[2]=true;
    }
    function test2() public returns (bytes32[] result) {
    }
    function test3() public returns (bytes32[][] memory) {
        uint256 v = 1;
    }
    function test4() public returns (bytes32[][] memory) {
        uint256 v = 1;
        myMap[3]=true;
    }
}
