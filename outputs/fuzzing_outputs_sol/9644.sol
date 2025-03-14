pragma solidity ^0.8.0;
contract Mutated {
    uint i = 1;
    function test() public returns (uint) pure returns (uint) {
        i = i + 1;
        return i;
    }
}
contract MutatedClass {
    uint i = 1;
    function test() public returns (uint) pure returns (uint) {
        i = i + 1;
        return i;
    }
}
