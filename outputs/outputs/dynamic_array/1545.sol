pragma solidity ^0.8.0;
contract DynamicArraysV1 {
    uint256[1] y;
    constructor(uint t) public {
        for (uint i = 0; i < t; ++i) {
            y[i] = uint(i);
        }
    }
    function mod(uint x) public view {
        uint y0 = y[x];
        for (uint i = 1; i < 55; ++i) {
            uint y1 = y[x - i];
            y[x - i] = y0 + y1;
        }

    }
}
contract DynamicArraysV2 {
    uint256[1] y;
    constructor(uint t) public {
        for (uint i = 0; i < t; ++i) {
            y[i] = uint(i);
        }
    }
    function f(uint x) public view {
        for (uint i = 0; i < 25; ++i) {
            y[x - i];
        }
    }
}
