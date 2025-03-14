pragma solidity ^0.8.0;
contract Mutated {
    bytes4 constant a = 0xffffffff;
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a) public{
        a = a + 1;
    }
}
