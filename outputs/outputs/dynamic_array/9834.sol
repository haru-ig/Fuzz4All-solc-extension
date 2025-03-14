pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint[] x = [0];
    constructor() public {
    x[1] = 0x4001;
    uint[] memory b = x;
    b[0] = 0x2001;
    b[1] = 0x1001;
    }
}
