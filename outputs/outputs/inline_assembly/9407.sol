pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    i = _i;
  }
  int i;
  mapping(address => int) public map;
}
