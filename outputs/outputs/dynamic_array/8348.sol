pragma solidity ^0.8.0;
contract Solidity7To8 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 3;
        b = 2;
        maxA = 2;
    }
    fallback() public {
        a = a + 1;
        b = b + 2;
        maxA = maxA + 1;
    }
}
