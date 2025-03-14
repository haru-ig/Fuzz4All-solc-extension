pragma solidity ^0.8.0;

contract SemanticEquivalence
{
    constructor() { revert(); }
    function mutateData() public pure { revert(); }
    function mutateAddress() public pure returns (address) { revert(); }
    function mutateBool() public pure returns (bool) { revert(); }
}
