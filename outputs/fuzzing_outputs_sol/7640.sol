pragma solidity ^0.8.0;
contract FallbackSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function fallback () public payable { }
    receive () external payable { }
}
