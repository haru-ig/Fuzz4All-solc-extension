pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalence
{
    uint public x;
    uint public value;
    function xSetter() public { x += 1; }
    function xGetter() public pure { revert(); }
    function set(uint256 _v) public { value = _v; }
    function semanticEquivalence() public pure { revert(); }
}
