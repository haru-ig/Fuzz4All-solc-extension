pragma solidity ^0.8.0;
contract CappedToken { uint public cap; constructor (uint newCap) { cap = newCap; } function() public { require(msg.value <= cap); } }
