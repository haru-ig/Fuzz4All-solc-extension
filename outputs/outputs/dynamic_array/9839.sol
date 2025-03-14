pragma solidity ^0.8.0;
contract SemanticTest_v5a {
    uint[] x = [0];
    constructor() public {
    x = [0x8201,0x8202,0x8203];
    x[1] = 0x1001;
    x[2] = 0x1002;
    }
}
