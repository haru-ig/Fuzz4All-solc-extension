pragma solidity ^0.8.0;
contract Vulneratr1 { uint private x = 0xffffffffffffffff; function f() public { x = x * 4294967296; } }
