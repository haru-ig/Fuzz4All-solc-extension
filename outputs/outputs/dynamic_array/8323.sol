pragma solidity ^0.8.0;
contract Solidity7To1814 {
    uint public a;
    uint public b;
    uint256 public maxA;
    uint256 public prevB;
    uint256 constant size=4;
    constructor() public {
        uint temp = 3;
        a = temp;
        b = 3;
        maxA = temp;
        prevB = b;
    }
    function myFunction() public {
        uint temp = size;
        if(a >= maxA) a = a + a;
        a = a + a;
        a = a + a;
        a = a + a;
        b = prevB + prevB;
        b = b + b;
        a = a + a;
        a = a + a;
        b = b + b;
        b = b + b;
    }
}
