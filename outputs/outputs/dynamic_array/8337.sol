pragma solidity ^0.8.0;
contract Solidity0To7 {
    uint8 public a;
    uint8 public b;
    uint8 internal maxA;
    constructor() public {
        a = 0;
        b = 2;
        maxA = 1;
    }
    fallback() external payable {
        a = a - 1;
        b = b - 2;
        maxA = maxA - 2;
    }
}
