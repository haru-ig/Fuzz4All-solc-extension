pragma solidity ^0.8.0;
contract Mutated0 {
    function test() public {
        uint i = 1;
        emit Mutated(i);
    }
    event Mutated(uint indexed i);
}
