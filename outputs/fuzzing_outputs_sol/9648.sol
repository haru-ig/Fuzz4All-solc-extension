pragma solidity ^0.8.0;
contract Mutated {
    function test() public returns (uint) {
        uint i = 1;
        byte memory b;
        b = "Hello mutated";
        i = i + 1;
        return i;
    }
}
