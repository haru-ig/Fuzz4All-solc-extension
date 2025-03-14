pragma solidity ^0.8.0;
uint32 constant initIB = 9;
contract Q {
    uint24 internal static ib;
    constructor() public {
        ib += initIB * 40;
    }
}
