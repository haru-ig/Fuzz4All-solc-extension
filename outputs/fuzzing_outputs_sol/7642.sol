pragma solidity ^0.8.0;
contract AnotherFallbackSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    fallback () external payable onlyAddr { }
}
