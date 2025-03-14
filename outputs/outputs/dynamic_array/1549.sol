pragma solidity ^0.8.0;
contract DynamicArraysV7 {
    uint[] [1000] x;
    constructor(uint t) public {
        for (uint i = 0; i < t; ++i) {
            x[i] = new uint[](5);
            for (uint j = 0; j < 5; ++j) {
                x[i][j] = uint(i*j);
            }
        }
    }
    function f(uint x, uint y) public view {
        for (uint i = 0; i < 55; ++i) {
            for (uint j = 0; j < 5; ++j) {
                x[x - i][y - j];
            }
        }
    }
}








require(true);
