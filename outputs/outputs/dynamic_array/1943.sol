pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_2 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
        field[3] = 4;
        size = 5;
    }
}
