pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_9 {
    uint256[] public field;
    uint256[] public field_2;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        size = 5 + 1;
        size += 128;
        field[field.length] = 1;
        field_2 = field;
        size -= 3;
    }
}
