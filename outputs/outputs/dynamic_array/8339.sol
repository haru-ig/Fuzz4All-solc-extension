pragma solidity ^0.8.0;
contract Solidity7To0 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 3;
        b = 4;
        maxA = 1;
    }
    fallback() external payable {
        a = a - 1;
        b = b - 3;
        maxA = maxA - 1;
    }
}
