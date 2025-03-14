pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V4 {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
            require(x.length == x.length + 1, "AssignmentModulation_V4: Wrong length of array");
        }

}
