pragma solidity ^0.8.0;
contract Solidity0To7 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 6;
        b = 2;
        maxA = 4;
    }
    fallback() external payable {
        a = a + 1;
        b = b + 3;
        maxA = maxA + 3;
    }
}
