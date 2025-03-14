pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    var i = _i;
  }
  int public i;
  mapping(address => int) public map;
}
