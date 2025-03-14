pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public y;
    uint public z;
    uint public w;
    uint public k;
        constructor() public {
        w = 0;
        x = 3;
        x = x - 5;
        k = 100;
        w = w * 20;
        y = 6;
        x = x.sub(y);
        x = x - 7;
        z = 3 + 2 * x;
        k = 400;
    }
}
