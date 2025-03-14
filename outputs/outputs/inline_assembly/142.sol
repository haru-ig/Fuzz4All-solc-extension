pragma solidity ^0.8.0;
contract E2G2A {
  uint256[2] _numbers;
  mapping(address => uint256) private _map;
  constructor(uint16 num) {
    _numbers[0] = num;
  }
  function get256(address addr)
    internal
    view
    returns (uint256)
  {
    return _map[addr];
  }
  function set256(address addr, uint256 amt)
    internal
  {
    _map[addr] = amt;
    emit Set(addr, amt);
  }
}
contract E3G3A is E2G2A {
  uint4 private _number;
  constructor(uint16 x, uint32 num) E2G2A(x,num) {}
}
