pragma solidity ^0.8.0;
contract P2 {
    uint32 constant initIV = 27;
    uint32 public iv;
    P2 public constant P2Constants = P2(initIV);
    constructor() public {
        iv = initIV;
    }
}
