pragma solidity ^0.8.0;
contract D {
  string[] public counter;
  constructor(string memory x) public {
    counter.push(x);
  }
  function checkCounter(uint idx) public view returns (string memory x) {
    return counter[idx];
  }
  function setCounter(uint idx, string memory x) public {
    counter[idx] = x;
  }
  function mutatedCounter(uint idx, string memory x) public {
    counter[idx] = x;
  }
  event CounterUpdated(uint indexed id, string indexed updatedValue);
}

address payable payee;
contract C {
  string[] public counter;
  address payable payee;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint idx) public view returns (string memory x) {
    return counter[idx];
  }
  function setCounter(uint idx, string memory x) public {
    counter[idx] = x;
  }
  function mutatedCounter(uint idx, string memory x) public {
    counter[idx] = x;
  }
  event CounterUpdated(uint indexed id, string indexed updatedValue);
}
