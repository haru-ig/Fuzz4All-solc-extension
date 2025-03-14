pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public prevB;
    constructor() public {
        a = 3;
        b = 4;
        maxA = a;
        prevB = b;
    }
    function myFunction() public {
        a = a + a;
        a = a + a;
        b = b + b;
    }
}
