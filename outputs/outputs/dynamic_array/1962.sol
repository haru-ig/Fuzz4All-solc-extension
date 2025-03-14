pragma solidity ^0.8.0;
contract SeeminglyEquivalent {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        size = 5 + 1;
        field[field.length] = 1;
        field[field.length + 1] = 2;
        size -= 2;
    }
}
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_8 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        size = 5 + 1;
        field[field.length] = 1;
        field[field.length] = 2;
        size -= 2;
    }
}
