pragma solidity ^0.8.0;
contract Solidity
{
    int public a;
    int private b;
    int private aCopy;

    constructor() public {
        b = a;
        aCopy = b;
        b = aCopy;
    }
}
