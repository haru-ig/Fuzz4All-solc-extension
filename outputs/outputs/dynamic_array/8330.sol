pragma solidity ^0.8.0;
contract Solidity0To7 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    uint8 public prevB = 0;
    constructor() public {
        uint8 temp = 4;
        a = 3;
        b = temp;
        maxA = temp;
        prevB = prevB + prevB;
    }
    fallback() external payable {
        uint8 temp = 10;
        a++;
        b = b + b;
        b = b + b;
        a = a + a;

        b = prevB;
        b = b + b;
        maxA = maxA + maxA;
        prevB = prevB + prevB;
    }
}
