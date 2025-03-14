pragma solidity ^0.8.0;
contract C {
    uint public x;
        constructor() public {
        x = 3;
        x = x / 2;
    }
}
