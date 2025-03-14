pragma solidity ^0.8.0;
contract MutatedMutatedMutatedSame {
    uint256 private test = 6;
    function myInit(uint256 a, uint256 b) private {
        test = uint256((a + uint256((b * test) ^ (b * b))) ^ b);
    }
}
