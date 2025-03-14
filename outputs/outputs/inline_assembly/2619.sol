pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
        constructor() public {
        x = 3;
        w = 0;
        x = x - 1;
        x = x * 5;

        z = 2 + 4 * x;
        w = w * 8;
        ky = 1000;
    }
}
