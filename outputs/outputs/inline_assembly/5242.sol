pragma solidity ^0.8.0;
contract P1 {
    uint8 constant initIV = 84;
    bytes32 internal iv;

    constructor() public {
        iv = type(uint32).toBytes32(initIV);
        require(iv.equals(type(uint32).toBuffer32(initIV)));
    }
}
