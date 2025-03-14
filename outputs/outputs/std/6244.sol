pragma solidity ^0.8.0;
contract MutatedGeneration8 {
    uint256 public x=123456798;
    function add(uint256 y) public {
        x = x + y;
    }
    function sub(uint256 y) public {
        x = x - y;
    }
}
