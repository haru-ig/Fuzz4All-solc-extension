pragma solidity ^0.8.0;
contract Mutated {
    function test() public view returns (uint i) {
        i = 1;
        i = i + 1;
    }
}
contract MutatedClass {
    uint i = 1;
    function test() public view returns (uint) {
        i = i + 1;
        return i;
    }
}
