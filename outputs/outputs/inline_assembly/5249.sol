pragma solidity ^0.8.0;
contract Q {

    uint32 constant initIV = 8;
    uint32 public iv;



    constructor() public {
      iv = initIV;
    }
}
