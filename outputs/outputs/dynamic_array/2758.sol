pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations26 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1285;
        y = 1278;
    }
    modifier set_x(uint) {
        x = value;
        _;
    }
    modifier set_y(uint) {
        y = value;
        _;
    }
}
