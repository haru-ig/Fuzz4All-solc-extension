pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 0;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function setCounter(uint x) public {
    counter += x;
    uint c;
    return counter;
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter -= x;
    uint c;
    return counter;
  }
  event CounterUpdated(uint indexed updatedValue);
}

contract C {
  address payable to;
  uint public counter = 0;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function setCounter(uint x) public {
    counter += x;
    uint c;
    return counter;
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter -= x;
    uint c;
    return counter;
  }
  event CounterUpdated(uint indexed updatedValue);
}
pragma solidity ^0.8.0;
library Counter {

  uint public counter = 0;

  function add(uint x) internal pure returns (uint) {
    counter += x;
    return counter;
  }

  function check() internal view returns (uint) {
    return counter;
  }












}
contract CounterTests {
  Counter.Counter counter;
  Counter.Counter memory counter_mem;

  constructor() {
    counter = new Counter.Counter(msg.sender);
    counter_mem = new Counter.Counter(msg.sender);
  }

  function addTest() internal {
    counter.add(uint(msg.sender));
    counter
