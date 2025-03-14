pragma solidity ^0.8.0;
contract SemanticTest_v4 {
    uint[] public x = [0];

    constructor() public {
        x[2] = 3;
        x[0x10] = 40;

    }
}
