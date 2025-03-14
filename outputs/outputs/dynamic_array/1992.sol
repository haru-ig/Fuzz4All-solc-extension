pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_12 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp{1, 2, 3, 4, 5};
        field = tmp;
        size -= 1;
    }
}
