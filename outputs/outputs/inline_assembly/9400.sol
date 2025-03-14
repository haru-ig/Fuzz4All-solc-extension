pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    i = _i;
  }
  int private constant i = 10;
  mapping(address => int) public map;
}
