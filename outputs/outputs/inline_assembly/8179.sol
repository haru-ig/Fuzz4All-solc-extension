pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a, uint256 _b) public {
        a = a+1;
        b = b+2;
    }
}
