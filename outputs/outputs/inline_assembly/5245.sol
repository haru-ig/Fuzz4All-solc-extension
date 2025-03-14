pragma solidity ^0.8.0;

pragma ABIEVMVersion 2;
contract Q{
    uint32 constant initIV = 8;
    uint32 public iv;

    constructor() public {
        iv = initIV;
    }
}
