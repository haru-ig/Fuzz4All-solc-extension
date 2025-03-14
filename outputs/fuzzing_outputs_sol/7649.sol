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
    }
    function fallback () public payable onlyCaller { }
    receive () external payable onlyCaller { }
}
