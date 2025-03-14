pragma solidity ^0.8.0;
contract DynamicArrays {
    uint256[1] y;
    function f(uint x) public view {
        for (uint i = 0; i < 1; ++i) {
            y[x];
        }
    }
}
