pragma solidity ^0.8.0;
contract DynamicArraysV3 {
    uint256[5] y;
    function f(uint x) public view {
        for (uint i = 0; i < 4; ++i)
        {
            y[x - i] = 4;
        }
    }
}
