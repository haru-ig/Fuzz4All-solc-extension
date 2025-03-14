pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalence
{
    uint256 public value;
    function set(uint256 _v) public { value = _v; }
    bytes32 public myMethod =
        keccak256(abi.encodePacked("0x", keccak256(abi.encodePacked("x", "2"))));
    function semanticEquivalence() public pure { revert(); }
}
