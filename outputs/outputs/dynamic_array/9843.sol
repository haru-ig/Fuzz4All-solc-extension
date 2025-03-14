pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint[] x = [0];
    constructor() public {
    require(x.length == 0, "Initial check");
    x = [0x8201, 0x8202, 0x8203];
    require(x.length == 3, "Second check");
    }
}
