pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence is FallbackSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function newFallback () public payable {}
    receive () external payable {}
}

pragma solidity ^0.8.0;
contract ModifiedSemanticEquivalence is FallbackSemanticEquivalence
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
    function newFallback () public payable { }
    receive () external payable { }
}
