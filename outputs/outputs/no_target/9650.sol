pragma solidity ^0.8.0;
contract Denounces { function aaa(uint value) public returns (uint) { return value;}

function bad() external returns (uint) {
   uint x;
   return x ;
   return 7;
} }
contract DoesNotDenounce { function bad() external returns (uint) { return 7;}}
