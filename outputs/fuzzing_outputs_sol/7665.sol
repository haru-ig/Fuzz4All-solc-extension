pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence
{
    uint256 constant value = 0;
    function fallback () public { }
    receive () external { value; }
    function mutateAddress() public pure returns (address) { revert(); }
    function mutateBool() public pure returns (bool) { revert(); }
    function mutateCall() public payable returns (uint256) { revert(); }
}
