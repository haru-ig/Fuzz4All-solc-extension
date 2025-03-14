pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    i = _i;
  }
  int i;
  mapping(address => int) public map;
  function put(address key, int x) public {
    map[key] = x;
    map[key] = 5;
  }
  function get(address key) public view returns(int) {
    return map[key];
  }
  function remove(address key) public {
    delete map[key];
  }
}
