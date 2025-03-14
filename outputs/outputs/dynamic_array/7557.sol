pragma solidity ^0.8.0;
contract Test14 {
    uint public A;
    uint public B;
    constructor() public{
        A = [1, 2, 3, 4];
        uint x = 0;
        x = A[1];
    }
}
