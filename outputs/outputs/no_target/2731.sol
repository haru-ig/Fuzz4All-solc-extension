pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn6097 { uint public x; constructor() { x = 190; } function mutate(uint) public { x = 795; revert(); } }
