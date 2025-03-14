pragma solidity ^0.8.0;
contract SemanticTest_v5 {
    uint[] public x;
    constructor() public {
        x = new uint[](0);
        uint x1 = 392;
        x = new uint[](1);
        x[0] = x1;
        x[1];
    }
}
