pragma solidity ^0.8.0;
contract DynamicArraysV3 {
    uint256[1] y;
    constructor(uint t) public {
        for (uint i = 0; i < t; ++i) {
            y[i] = uint(i);
        }
    }
    function f(uint x) public view {
        for (uint i = 0; i < 55; ++i) {
            y[x - i];
        }
    }
}
