pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 0;
  address[3] _arr;

  constructor(address payable payee) public {
    to = payee;
    for (uint i = 0; i < _arr.length; i++) {
      _arr[i] = payee;
    }
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter += x;
    if (counter > x * 2) {
      uint c;
      return _arr.length;
    }
    uint c;
    return counter;
  }
}


```
