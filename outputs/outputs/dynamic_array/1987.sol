pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_11 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        tmp = new uint256[](6 + 2);
        tmp[tmp.length] = 1;
        size -= 2;
        size += 2;
        tmp[tmp.length - 2] = 1;
        field = tmp;
    }
}
