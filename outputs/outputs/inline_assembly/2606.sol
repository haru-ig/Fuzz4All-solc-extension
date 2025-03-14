pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x = 0;

    constructor() public {
        x = 3;
        x = x;
        x = x + 1;
        x = x - 1;
    }
}
