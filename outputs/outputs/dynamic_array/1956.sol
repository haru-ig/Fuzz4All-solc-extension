pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_5 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        size = 5;
    }
}
