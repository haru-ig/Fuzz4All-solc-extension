pragma solidity ^0.8.0;
uint32 iv;
uint32 constant initIV = 8;
contract Q is Q {
    constructor() public {
        iv += initIV * 30;
    }
}
