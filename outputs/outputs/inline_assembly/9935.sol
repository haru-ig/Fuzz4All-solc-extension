pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test(uint v) public {
        uint x = 2;
        value = v;
        value2 = value;
    }
}
