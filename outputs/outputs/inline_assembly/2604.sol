pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x;
        constructor() public {
        x = 3;
        x = x / 2;
        x = x * 4;

        x = 2;
        x = x / 2;
        x = x * 4;
    }
}
