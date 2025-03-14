pragma solidity ^0.8.0;
contract Vulneratr2 { uint160 private x; function f() public { x = (uint160(22) * 4294967296 + uint160(5)); } }

pragma solidity ^0.8.0;
