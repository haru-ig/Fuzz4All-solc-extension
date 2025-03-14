pragma solidity ^0.8.0;
contract Solidity1To6Mod {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    constructor(uint x) public {
        a = x;
        b = x;
        maxA = a + x;
        maxB = b + x;
        prevB = b + x;
        prevA = a + x;
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
        a = a + 1;
        b = b - a + a + a + a + a + a + 1;
        b = b + a + a + 1;
        maxB = a;
