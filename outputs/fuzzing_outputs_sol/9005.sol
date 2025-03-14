pragma solidity ^0.8.0;
contract Caller3 {
  function callBackFunc(uint _value) public payable {
    uint sum;
    uint v = 1;
    while (v < 100) {
      sum += _value;
      if (sum > 10) {
        sum = 0;
      }
      v += v;
    }
  }
}
