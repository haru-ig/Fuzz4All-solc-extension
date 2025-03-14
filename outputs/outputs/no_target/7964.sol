pragma solidity ^0.8.0;
contract TestMutator7 {
  uint[4] public x;
  uint[2] public z;
  constructor () public {
    x = new uint[2];
    z = new uint[2];
    x[1] = 0xfffffffffe;
    x[0] = 0xfffffffffe;
    z[0] = 1;
    z[1] = 0;
  }
  function set(uint[2] memory _values) external {
    z = _values;
    x = _values[0] * _values[1];
  }
}
