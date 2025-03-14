pragma solidity ^0.8.0;
contract Mutant6j {
  uint32 s = 0;
  uint32[6] memory vars;

  constructor() {
    vars[0] = 1;
    vars[1] = 2;
    vars[5] = 5;
    vars[3] *= 2;
  }

  function use(uint32 _x) public returns (uint32 result) {
    x = 1;
    value = _x;

    return _x;
  }

  function get(uint index) public view returns (uint32) {
    return vars[index];
  }

}
