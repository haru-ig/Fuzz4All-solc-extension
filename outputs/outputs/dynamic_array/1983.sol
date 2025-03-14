pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_10 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](6 + 2);
        size = 8 + 2;
        field[field.length] = 1;
        size -= 2;
        size += 2;
        field[field.length - 2] = 2;
        size -= 4;
        size += 4;
        size += 2;
        field[field.length] = 3;
    }
}
