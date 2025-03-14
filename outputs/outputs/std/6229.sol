pragma solidity ^0.8.0;

contract MutatedGeneration2 {
    uint256 f;
    function g() public returns (uint256) {
        uint256 r = f? 1 : 0;
        while (f > r) {
            f = f - r;
        }
        return f;
    }
}
