pragma solidity ^0.8.0;
library UintMapping_Library {
    uint256 public constant NUM_ELEMENTS = 2;

    mapping (uint256 => uint256) public elements;

    constructor() public {
        elements[1] = 10;
    }
}
