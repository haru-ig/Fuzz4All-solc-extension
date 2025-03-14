pragma solidity ^0.8.0;
contract Solidity7ToSolidity0 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 4;
        b = 3;
        maxA = 4;
    }
    fallback() external payable {

        uint8 y = 1 - a;
        a = a - 1;
        b = b + y;
        maxA = maxA + 1;
    }
}
