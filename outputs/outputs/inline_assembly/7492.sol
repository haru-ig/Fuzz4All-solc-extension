pragma solidity ^0.8.0;
contract Example {
    uint x = 1;
    uint y = 2;
    uint z;
    constructor() public {
        x = 5;
        z = 5 ** (5**5);
        y = x + x;
    }
}
