pragma solidity ^0.8.0;
contract semanticsolidity0822e { event E(uint x); uint x; constructor() public { x = 40; } function set(uint x_) public { x = x_; emit E(x); } }
