pragma solidity ^0.8.0;
contract FallbackSemanticEquivalence2
{
    fallback () external { }
}
contract FallbackEthereumEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    receive() external payable { }
}
contract FallbackHighLevelEquivalence
{
    fallback () public pure { }
}
contract FallbackNoModifierEquivalence
{
    fallback () private
{
}
}
contract FallbackSemanticEquivalenceFallback
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    fallback () external pure { }
}
