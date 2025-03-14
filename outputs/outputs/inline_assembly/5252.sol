pragma solidity ^0.8.0;
contract Q {
    uint32 constant initIV = 8;
    bytes32 public b;
    constructor() public {
        uint32 i = initIV;
        b = bytes32(i);
    }
}
