pragma solidity ^0.8.0;
 contract C {
    uint x;
    constructor() public {
        x = 0x7FFFFFFFFFFFFFFF;
        x += uint1(1);
    }
}
