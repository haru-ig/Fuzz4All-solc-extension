pragma solidity ^0.8.0;
contract Caller2 {
  function callBackFunc(uint _value) public {
    uint v = 1;
    while (v < 100) {
      uint s = _value + v + v - v + (v.mul(4)) - (v.add(2));
      if (s > 10) {
        throw;

      }
      v += v;
    }
  }
}
