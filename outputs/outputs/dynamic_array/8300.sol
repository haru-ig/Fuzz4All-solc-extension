pragma solidity ^0.8.0;
contract Solidity1To6 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    constructor() public {
        a = 1;
        b = 1;
        maxA = a;
        maxB = b;
        prevA = 1;
        prevB = 1;
    }
    function myFunction() public {
        a = a + 1;
        b = b + a;
        b = b * a + a;
        b = b + a + a;
        b = b * 2 + a + a;
        b = b + a + a + 1;
        b = b - a + a + a + a + a + a + 1;
        b = b + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + a + a + 1;
        b = b + a + a + a + a + a + a + a + a + a +
