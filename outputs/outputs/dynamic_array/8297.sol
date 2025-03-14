pragma solidity ^0.8.0;
contract Solidity3 {
    uint public a;
    uint public b;
    uint public prevA;
    uint public prevB;
    uint public maxA;
    uint public maxB;
    constructor() public {
        maxA = 1;
        maxB = 1;
        prevA = 1;
        prevB = 1;
    }
    function myFunction() public {
        b = b + a + 1;
        b = b + a + 1;
        maxA = a;
        maxB = b;
        a = a + 1;
        maxA = a;
        maxB = b;
    }
}
