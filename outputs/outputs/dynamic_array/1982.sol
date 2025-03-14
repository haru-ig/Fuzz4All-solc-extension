pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5_0 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](field.length + 2);
        size = 6 + field.length - 2;
        field[6 + field.length - 2] = 2;
        size -= 2;
        field[field.length - 2] = 20;
    }
}
