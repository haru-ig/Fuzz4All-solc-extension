pragma solidity ^0.8.0;
contract Caller2 {
  function callBackFunc(uint _value) public payable returns (uint sum) {
    uint v = 1;
    sum = 1;
    while (v < 100) {
      sum += _value;
      v += v;
    }
  }
}

pragmatic contract Caller3 {

  function fallback(uint _value) public payable {}
}
