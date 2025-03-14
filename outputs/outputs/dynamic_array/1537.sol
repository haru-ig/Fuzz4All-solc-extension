pragma solidity ^0.8.0;
contract DynamicArraysV2 {
    uint256[1] y;
    function f(uint x) public view {
        for (uint i = 0; i < 55; ++i) {
            y[x - i];
        }
    }
}
