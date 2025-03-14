pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
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
        b = b + a + 1;
        b = b + a + b + 1;
        a = a + 1;
        b = b + a + b + b + 1;
        a = a + 1;
        a = a + 1;
        maxA = a;
        maxB = b;
    }
}
