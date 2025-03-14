pragma solidity ^0.8.0;
contract Mutated is Mutated {
    uint valueA = 1;
    uint valueB = 1;
    function mutateA(uint256 value) public {valueA = value; }
    function mutateB(uint value) public {valueB = value; }
}
