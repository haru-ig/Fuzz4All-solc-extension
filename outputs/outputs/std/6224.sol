pragma solidity ^0.8.0;
contract MutatedGeneration1 {
    uint256 f;
    function g() public returns (uint256) {

        while (f > 1) {
            f = f - 1;
        }
        return f;
    }
}
