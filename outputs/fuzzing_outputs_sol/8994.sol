pragma solidity ^0.8.0;
contract Caller {
  function callBackFunc(uint _value) public returns (uint sum) {
    uint v = 1;
    sum = 1;
    while (v < 10) {
      sum += _value;
      v += v;
    }
  }
}
