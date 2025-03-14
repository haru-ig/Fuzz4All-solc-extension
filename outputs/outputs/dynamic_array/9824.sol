pragma solidity ^0.8.0;
contract SemanticTest_v4b {
    uint[1] public x = [3];
    constructor() public {
        x = [3, 0, 0];
        x = [3, 0];
    }
}
