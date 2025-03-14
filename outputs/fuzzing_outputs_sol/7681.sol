pragma solidity ^0.8.0;
contract SemanticsEquivalence
{
    uint256 public value;
    function set(uint256 _v) public { value = _v; }
    bytes32 public myMethod = "x";
    function semanticEquivalence() public pure { revert(); }
}
