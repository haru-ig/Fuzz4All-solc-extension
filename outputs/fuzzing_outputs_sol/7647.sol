pragma solidity ^0.8.0;
contract AddressToFallbackSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function toFallbackSemanticEquivalence () public returns (bool) { return true; }
    function fallback () public payable { }
}
