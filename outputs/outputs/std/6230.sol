pragma solidity ^0.8.0;
contract MutatedGeneration6 {
    uint256 immutable x = 0;
    function g(uint256 y) public {
        for (uint256 i = 0;i < 3;i ++) x = 1;
        x = 1;
        for (uint256 i = 0;i < 3;i ++) x = 11;
        x = 1;
    }
}
