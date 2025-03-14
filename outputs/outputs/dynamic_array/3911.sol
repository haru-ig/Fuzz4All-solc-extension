pragma solidity ^0.8.0;
contract C {
    uint y0;
    struct S { uint[][] array; uint[][][2] b; }
    uint[][][2] b;
    constructor () public {
        y0 = (uint) b;
    }
}
