pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_10 {
    uint256[3, 3] public field;
    uint256 public size;
    uint256 public i1;
    uint256 public i2;
    constructor() public {
        field = new uint256[i1, i2];
        size = i1 * i2;
        i1 = 3;
        i2 = 2;
        field[i2, i1] = 1;
        size--;
        field[i2, ++i2].value = 2;
    }
}
