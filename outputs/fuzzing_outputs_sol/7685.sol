pragma solidity ^0.8.0;
contract SemanticsMutation
{
    uint256 public value;
    function set(uint256 _v) public { value = _v; }
    bytes32 public myMethod = "x";
    function semanticMutation_reverts() public pure { revert(); }
    function semanticMutation_callsSet() public nonReentrant { set(42); }
    function semanticMutation_callsSet2() public nonReentrant { set(25); }
}
