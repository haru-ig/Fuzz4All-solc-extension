pragma solidity ^0.8.0;
contract MutatedBlock3Mutation54 {
  uint constant _k = 3;
  modifier k(uint x) { return k_r(x); }
  uint constant _v = 3;
  function k_r(uint x) public pure returns(uint) {
    return x + K;
  }
  uint constant _K = 1000;
  function test() public pure returns(uint) {
    uint x = x + _k * _v;
    uint z = x + (uint(_k).add(_v));
    uint w = x + _k;
    uint y = x;
    uint u = x;
    uint v = u + w;
    uint t = uint(_k);
    uint h = t;
    uint r = _k.add(_v);
    uint n = h + y + z + x + (_k + _v);
    uint g = (uint)(_K.add(uint(_k) - uint(_v) - _k * _v + uint(_k) / (_k + _v) + uint(_k) * _v) / _v / 3));
}
