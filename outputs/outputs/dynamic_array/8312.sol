pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    constructor() public {
        prevA =  a;
        prevB =  b;
        a = prevA +  a;
        b = prevA +  b;
        maxA = prevA*maxA;
        maxB = prevA*maxB;
    }
    function myFunction() public {
        prevA =  a;
        prevB =  b;
        a = prevA + a + a;
        b = prevB + b + b;
        prevA =  a;
        prevB =  b;
    }
}
