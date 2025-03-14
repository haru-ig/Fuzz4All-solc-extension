pragma solidity ^0.8.0;
 contract Vulneratr { bytes1 y = 0x7fffffff; function f() public returns (uint) { y = (3*y * 4294967296) / 5; return 0; } }
pragma solidity ^0.8.0;
contract Vulneratr { function g() public { y = 0x7fffffff; } }
