pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    modifier onlyCaller() {
        if(msg.sender == addr) _;
    }
    receive () public payable onlyCaller { }
    receive () public payable onlyCaller { emit x(); }
    function x() public pure { }
}
