pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_3 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        for (uint i = 0; i < 5; i++) {
            field[i] = 1;
        }
        size = 5;
    }
}
