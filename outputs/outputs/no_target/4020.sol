pragma solidity ^0.8.0;
 contract Vulneratr { string private s = 'hello'; function f() public { s = "world"; } }
