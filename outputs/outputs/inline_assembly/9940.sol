pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    constructor() {
        value = 8;
    }

    function test(uint256 x) public {
        uint256 y = x / 2;
        value = x * 2 ** y;
    }

    function mutatedTest() public {
        value = value + 6;
        x = 3;
        value = x << 5;
        value = x + 4;
    }
}
