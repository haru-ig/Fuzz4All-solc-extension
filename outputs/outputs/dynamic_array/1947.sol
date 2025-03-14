pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_1 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
        field[3] = 4;
        field[4] = 5;
        size = 5;
    }
}
