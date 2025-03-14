pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint[] public x = [0];
    constructor() public {
    x[1] = 0x4002;
    x[2] = 0x2002;
    x[0] = 0x1002;
    }
    modifier empty() {
        if (arrayEmpty(x) == false) {
            throw;
        }
        else {
            _;
        }
    }
}
