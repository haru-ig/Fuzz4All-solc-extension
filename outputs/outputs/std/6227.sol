pragma solidity ^0.8.0;
contract MutatedGeneration2 {
    uint256 f;
    function g() public returns (uint256) {
        f = 1 / 10;
        return f;
    }
}
