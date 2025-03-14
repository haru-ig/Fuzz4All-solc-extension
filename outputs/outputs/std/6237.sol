pragma solidity ^0.8.0;
contract MutatedGeneration6 {
    uint256 x;
    function g(uint256 z) public {
        for (uint256 y = 0; y < z; ++y) {
            x = x * x;
        }
    }
}
