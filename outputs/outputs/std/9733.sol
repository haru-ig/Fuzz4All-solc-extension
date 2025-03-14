pragma solidity ^0.8.0;
contract MutateSub {
    uint x;
    address c;
    constructor() public {
        x = 0xDEADBEEF;
        c = address(this);
    }
}
