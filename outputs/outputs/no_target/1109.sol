pragma solidity ^0.8.0;
contract SemanticMutation7
{
    uint256 public test;
    modifier test2() { this.test /= 10; this.test *= 1; yield; }
}
