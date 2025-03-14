pragma solidity ^0.8.0;
contract MutatedDynamicArraysV3 {
    uint256[1] x;
    uint256[1] y;
    uint256[1] z;

    constructor() public {
        z = uint(1);
        for (uint i = 0; i < 55; ++i) {
            x[z] = 0;
            z++;
        }
        y = x;
    }

    function f(uint x) public view {
        for (uint i = 0; i < x; ++i) {
            y = x;
        }
    }
}
