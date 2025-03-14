pragma solidity ^0.8.0;
contract A {
    uint x;
    uint y;
    uint z;
    constructor() {
        x = 0x3;
        y = 0;
        z = 1;
    }
    function f() public pure {
        x += 0x3;
        y = 0;
        x = 0;
    }
}
