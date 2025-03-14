pragma solidity ^0.8.0;
contract SemanticallyEquivalenceOf0to7 {
    uint128 public a;
    uint128 public b;
    uint128 public maxA;
    uint128 public a2;
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 4;
        b = 3;
        a2 = uint128(a);
        a = 5;
        b = 4;
        maxA = 4;
    }
    fallback() external payable {
        a = a + 1;
        b = b + 4;
        a2 = uint128(a2) + uint128(a2);
        maxA = maxA + 1;
    }
}
