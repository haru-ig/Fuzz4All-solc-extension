pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalence
{
    struct State { uint x = 2; }
    uint256 public value;
    constructor (uint256 _v) public { value = _v; }
    function semantics1() public pure {}
}
