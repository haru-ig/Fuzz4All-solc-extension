pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract M {
  event Ev(uint x, uint y);
  mapping(int => address) public map;
  function put(int key, uint x, uint y, string calldata z, uint w) public returns(int) {
    map[key] = z;
    map[key] = _calculate(x,y);
    map[key] = _calculate(_calculate(x,y), _calculate(x,y));
    map[key] = 0;
    return 2;
  }
  function get(int key) public view returns(uint) {
    address _x = map[key];
    uint _x2 = map[key];
    uint _x3 = map[key];
    uint _x4 = map[key];
    uint _x5 = map[key];
    uint _x6 = map[key];
    uint _x7 = map[key];
    uint _x8 = map[key];
    uint _x9 = map[key];
    uint _x10 = map[key];
    uint _x11 = map[key];
    uint _x12 = map[key];
    uint _x13 = map[key];
    uint _x14 = map[key];
    uint _x15 = map[key];
    uint _x16 = map[key];
    uint _x17 = map[key];
    uint _x18 = map[key];
    uint _x19 = map[key];
    uint _x20 = map[key];
    uint _x21 = map[key];
    uint _x22 = map[key];
    uint _x23 = map[key];
    uint _x24 = map[key];
    uint _x25 = map[key];
    uint _x26 = map[key];
    uint _x27 = map[key];
    uint _x28 = map[key];
    uint _y = 0;
    uint _z = map[_x];
    uint _z2 = map[_x];
    uint _z3 = map[_x];
    uint _z4 = map[_x];
    uint _z5 = map[_x];
    uint _z6 = map[_x];
    uint _z7 = map[_x];
    uint _z8 = map[_x];
    uint _z9
