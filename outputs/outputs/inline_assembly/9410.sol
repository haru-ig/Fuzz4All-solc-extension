pragma solidity ^0.8.0;
contract C {
  constructor(int _i) public {
    i = _i;
  }
  int i;
}
contract M {
  constructor(int _i) public C(i) {
    map[msg.sender] = _i;
  }
  int i;
  mapping(address => int) public map;
}
