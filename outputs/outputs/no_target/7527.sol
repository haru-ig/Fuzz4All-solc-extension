pragma solidity ^0.8.0;
contract Vulnerable { function f(byte x) public { assembly { x } } }
