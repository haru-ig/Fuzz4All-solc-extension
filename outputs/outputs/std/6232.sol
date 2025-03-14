pragma solidity ^0.8.0;
contract MutatedGeneration6 {
    uint256 x;
    function g(uint256 z) public {
        x = x + x*x;
        x = x + x*x;
    }
}
