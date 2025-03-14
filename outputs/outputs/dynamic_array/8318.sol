pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint MAX_A = 5;
    uint public A;
    uint M_A = 6;
    uint prevB;
    constructor() public {
        a = a + 1;
        b = b + 1;
        maxA = a;
        prevB = b;
    }
    function myFunction() public {
        a = a + 1;
        a = a + 1;
        b = b + 1;
    }
}
