pragma solidity ^0.8.0;
contract EquivalentYul {
  uint x;
  function set() public {
    x = 0x100000000000000000000000000000000;
  }
  function test() public {
    uint z;
    z /= x;
    z /= x / x;
    z /= x / x % (x + x);
    z /= x / x % (x + x) % (x + x);
  }
  function get() public view returns (uint) {
    return x;
  }
}
