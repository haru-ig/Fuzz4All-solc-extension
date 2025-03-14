pragma solidity ^0.8.0;
contract SemanticTest_v5a {
    uint[] x = [0];
    constructor() public {
    x[1] = 0x4001;
    x[2] = 0x2001;
    x[0] = 0x1001;
    }
}
