pragma solidity ^0.8.0;
contract RevertedSemanticsEquivalence
{
    uint256 public value;
    function set() public { revert(); }
    function semanticEquivalence() public pure { revert(); }
}
