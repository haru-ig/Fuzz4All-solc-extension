pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint public prevA;
    uint public prevB;
    constructor() public {
        a = 1;
        b = 1;
        prevA = a;
        prevB = b;
    }
    function myFunction() public {
        a = a + b;
        a = a + a;
        maxA = a;
        maxB = b;
        prevA = a;
        prevB = b;
    }
}
