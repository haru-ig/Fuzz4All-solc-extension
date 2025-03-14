pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    modifier onlyCaller() {
        if(msg.sender == addr) _;
        else throw;
    }
    fallback () public onlyCaller pure { }
    receive () external payable pure { }
}
