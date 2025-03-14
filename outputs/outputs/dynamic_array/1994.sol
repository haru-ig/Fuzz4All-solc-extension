pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_11 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        size -= 1;
        size += 2;
        tmp = new uint256[](3 + 2);
        field = tmp;
    }
}
