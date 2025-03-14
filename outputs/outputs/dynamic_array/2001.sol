pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_122 {
    uint256[] public field;
    uint256 public size;
    uint256 public x_counter;
    uint256 public y_counter;
    uint256[4294967295] private private_memory;
    constructor() public {
        uint256[] memory tmp;
        x_counter = 2;
        y_counter = 501;
        size -= 2;
        tmp = field;
        delete tmp[6];
        delete tmp[5];
        delete tmp[2];
        delete tmp[0];
        delete tmp[3];
        tmp.length -= 2;
        tmp[1] += 1;
        field = tmp;
    }
}
