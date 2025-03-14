pragma solidity ^0.8.0;
contract MutatedTwo {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a) public {
        a = a+1;
        b = b+1;
    }
}
