pragma solidity ^0.8.0;
contract EquivalentABIv06SemanticsAreEquivilent {
    address public adder = 0x...;
    struct Token { address tokenAddress; }
    function mintA (uint a, Token memory t) public { adder.transfer(a); }
}
