pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_10 {
    uint256[] public field;
    mapping(uint8 => uint256) public field1;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        size = 5 + 1;
        field[field.length] = 1;
        field[field.length + 1] = 2;
        size--;
        field[field.length + 1] = 3;
    }
}
