pragma solidity ^0.8.0;
contract SemanticTest1_v4 {
    uint[] storage x = [0x10, 0x10];
    constructor() public {
        x[2] = 3;
    }
}
