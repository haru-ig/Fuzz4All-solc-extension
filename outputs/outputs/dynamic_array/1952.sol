pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_2 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = [1,2,3,4,5];
        size = field.length;
    }
}
