pragma solidity ^0.8.0;
 contract Vulneratr { uint y; function f() public { y = 2**256; y = y * uint16(0); y = y * 2**-257; y = y * uint16(-1); } }
