pragma solidity ^0.8.0;
contract MyPoint {
  uint16 x;
  uint16 y;
  Point public point_;
  bytes public data_;
  bool public flag;
  mapping (address => uint256) public balance_;
  address owner;
  uint8 public wIndex;
