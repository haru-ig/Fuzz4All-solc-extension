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
    counter = x;
    emit CounterUpdated(counter);
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter += x;
    uint c;
    return counter;
  }
  struct Memory {
    uint num;
    uint[] arr;
  }
  Memory memory prev;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkNum() public view returns (uint) {
    return prev.num;
  }
  function updateNums(uint num1, uint num2) public returns (uint) {
    uint n;
    n = prev.num;
    prev.num = n + 1;
    prev.arr.push(n);
    emit NumMutated(num1 + ":" + num2);
    return prev.arr.length - 1;
  }
  event NumMutated(uint indexed updatedValue1, uint indexed updatedValue2);
}

pragma solidity ^0.8.0;
contract Check {
  uint indexed counter;
  constructor(uint x) public {
    counter = x;
  }
  function checkIncrement(uint x) public {
    emit Incremented(x + 1);
    counter += x + 1;
  }
  event Incremented(uint indexed value);
}


contract Test {
  uint public counter;
  address payable to;
  event CounterUpdated(uint indexed after);
  event Incremented(uint indexed value);
  constructor() public {}

  function increment(uint value) internal returns(uint) {
    bytes memory encodedData =
