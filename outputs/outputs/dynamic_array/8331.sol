pragma solidity ^0.8.0;
contract Solidity7to8 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    uint8 public prevB;
    constructor() public {

        a = 3;
        b = 4;
        maxA = 4;
        prevB = b;
    }
    fallback() external payable {
        uint8 temp = 34;
        a = a + a;
        a = a + a;
        b = b + b;
        b = b + b;
    }
}
