pragma solidity ^0.8.0;
contract C {
    uint public x;
    uint public z = 0;
        constructor() public {
        x = 3;
        x = x - 1;
        x = x + 1;
    }
}
