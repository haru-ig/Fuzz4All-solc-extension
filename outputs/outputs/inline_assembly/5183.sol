pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public old = 0;
  uint public new = 0;
  uint public counter = 0;
  constructor(address payable payee) public {
    to = payee;
  }

  modifier onlyBy(address payee) {
    if (msg.sender == payee) _;
  }
  function getCounter() public view returns (uint) {
    emit Muted(old, new, counter);
  }
  function updateCounter(uint newCounter) public {
    new = newCounter;
    emit NewCounter(new, old);
  }
  function mutatedCounter(uint x) public onlyBy(msg.sender) returns (uint) {
    new = x + counter;
    old = counter;
    counter = newCounter;
    emit NewCounter(newCounter, old);
  }
  event CounterMutated(uint indexed newCounter, uint indexed oldCounter);
  event NewCounter(uint indexed new, uint indexed old);
}
