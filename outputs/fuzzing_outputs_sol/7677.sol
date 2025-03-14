pragma solidity ^0.8.0;
contract SemanticsEquivalence
{
    uint256 public value;
    function set(uint256 _v) public { value = _v; }
    function semanticEquivalence() public pure { revert(); }
}
