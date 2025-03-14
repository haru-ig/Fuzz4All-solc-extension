pragma solidity ^0.8.0;
library L{
    uint256 public value;
    constructor() public {
        assembly{
            value := mload(0x40)
        }
    }
    function test(uint256 x) public {
        uint8 y = x >> 1;
        value = x << y;
    }
}
contract C {
