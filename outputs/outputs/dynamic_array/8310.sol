pragma solidity ^0.8.0;
contract Solidity6To1 {
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
        prevA = a;
        prevB = b;
    }
    function myFunction() public {
        while (prevA < maxA) {
             prevA = prevA + prevA;
        }
        while (prevB < maxB) {
             prevB = prevB + prevB;
        }
        prevA = prevA - prevA + prevA;
        prevB = prevB - prevB + prevB;
        prevA = prevA - prevA + prevA;
        prevB = prevB - prevB + prevB;

        prevA = prevA - prevA + prevA;
    }
}
