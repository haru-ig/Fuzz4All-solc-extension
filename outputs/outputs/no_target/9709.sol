pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure
{ unchecked { { uint256 u; if (u < 0) return "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"; } } } }
