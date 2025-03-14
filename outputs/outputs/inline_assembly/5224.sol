pragma solidity ^0.8.0;
contract C {
  address payable to;
  mapping(uint => string) public count;
  constructor(address payable payee) public {
    to = payee;
  }
  function getCounter(uint idx) public view returns (string memory x) {
    return count[idx];
  }
  function checkMutatedCounter(uint idx, string memory x) public {
    count[idx] = x;
  }
  function setMutatedCounter(uint idx, string memory x) public {
    count[idx] = x;
    emit MutatedCounterUpdated(idx, x);
  }
  event MutatedCounterUpdated(uint indexed id, string indexed updatedValue);
}
