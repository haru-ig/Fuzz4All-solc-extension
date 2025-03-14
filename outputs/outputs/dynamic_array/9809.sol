pragma solidity ^0.8.0;
contract SemanticTest_v4a {
    uint[] public x = [0];
    constructor() public {
        x[2] = 30;
        x[0x10] = 400;
    }
}
