pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x;
    constructor() public {
        z = x;
        x = x / 2;
        x = x * 4;
    }
    function test() public {
        z = x;
    }
}
