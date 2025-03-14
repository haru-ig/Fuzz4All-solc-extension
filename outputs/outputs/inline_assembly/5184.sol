pragma solidity ^0.8.0;
contract C {
  uint numberToIncrement = 2;
  address payable to;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return numberToIncrement;
  }
  function setCounter(uint x) public {
    numberToIncrement += x;
    emit CounterUpdated(numberToIncrement);
  }
  function mutatedCounter(uint x) public returns (uint) {
    numberToIncrement += x;
    uint c;
    return numberToIncrement;
  }
  function mutatedCounter() public returns (uint) {
    numberToIncrement += 2;
    uint c;
    return numberToIncrement;
  }
  event CounterUpdated(uint indexed updatedValue);
}
```
