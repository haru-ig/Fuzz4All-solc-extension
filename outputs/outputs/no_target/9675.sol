pragma solidity ^0.8.0;
contract Mammut { uint8 public a; uint256 public b; function Mammut() public { a = 1; } function Mammut(uint256 b0, uint a0) public { a = a0; b = b0; } function mammut() public view returns (uint256) { return b; } function mammut(uint256 b2) public returns (uint256) { b = b2; return b; } }

pragma solidity ^0.8.0;
contract Undefined { uint8 public a; uint b; function Undefined() public { a = 1; } function Undefined(uint b0, uint a0) public { a = a0; b = b0; } function undefined() public view returns (uint) { return b; } }
