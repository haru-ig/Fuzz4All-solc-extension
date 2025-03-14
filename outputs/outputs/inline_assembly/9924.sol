pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test(uint256 v) public {
        uint256 x = 6;
        value = v;
        value2 = value;
        value = x;
    }
}
