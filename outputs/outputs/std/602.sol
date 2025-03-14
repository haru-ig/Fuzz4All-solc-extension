pragma solidity ^0.8.0;
contract ArrayMutator {
  uint[0] public a;
  function set(uint i) public {}
  function get(uint i) public pure {
    require(i < a.length);
    uint i2 = a[i];
    require(ModByTwos.mod2(i2) == ModByTwos.mod(i2));
  }
}
