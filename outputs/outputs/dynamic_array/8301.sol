pragma solidity ^0.8.0;
contract Solidity1To6 {
    uint public a;
    uint public prevA;
    uint private b;
    uint private maxB;
    bytes32 public prevB;
    bytes32 private __prevB;
    constructor() public {
        a = 1;
        b = 1;
        maxB = a;
        prevB = type(uint256).max;
        prevA = a;
    }
    function myFunction() public {
        b = b + a + 1;
        b = b * a + a + 1;
        b = b + a + a + 1;
        b = b * 2 + a + a + a + 1;
        b = b + a + a + a + a + 1;
        b = b + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + a + a + 1;
        a = a + 1;
        b = b - a + a + a + a + a + a + 1
