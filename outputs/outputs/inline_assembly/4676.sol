pragma solidity ^0.8.0;
library mutator83Lib { uint z = 2; }
contract mutator83 {
    bytes32 public x = keccak256(abi.encodePacked(uint(z)));
    constructor() public {
    (x, z) = (keccak256(abi.encodePacked(uint(z))), 3); } }
