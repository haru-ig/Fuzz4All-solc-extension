pragma solidity ^0.8.0;
contract SemanticTest_v4c{
    bytes32[] public x = [0x1234,0xabcd];
    constructor() public {
        x[2] = bytes32(x.length);
        x[1] = bytes32(x.length + 1);
        x = [bytes32(x.length + 1)];
        x = [0x1234,  bytes32(x.length)+1];
        x = [0x20];
    }
}
