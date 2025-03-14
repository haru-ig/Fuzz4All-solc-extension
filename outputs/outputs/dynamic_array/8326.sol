pragma solidity ^0.8.0;
contract Solidity0To7 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public prevB;
    constructor() public {
        uint temp = 4;
        a = 3;
        b = temp;
        maxA = temp;
        prevB = b;
    }
    fallback() external payable {
        uint temp = 4;
        a = a + a;
        a = a % 4;
        b = b + b;
        b = b + prevB;
    }
    receive () external payable {
        uint temp = 4;
        b = 3;
        maxA = a;
        prevB = a;
    }
}
