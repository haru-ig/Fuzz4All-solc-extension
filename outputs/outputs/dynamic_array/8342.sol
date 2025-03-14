pragma solidity ^0.8.0;
contract Solidity7To5 {
    uint public a;
    uint public b;
    uint public maxA;
    constructor() public {
        a = 3;
        b = 4;
        maxA = 15;
    }
    fallback() external payable {
        a = a - 1;
        b = b - 3;
        maxA = maxA - 1;
    }
}
