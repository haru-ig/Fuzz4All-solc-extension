pragma solidity ^0.8.0;
contract C {
  string[] memory count;
  mapping(uint => string) public count2;
  uint public i;
  constructor() public {
    i = 0;
  }
  function getCounter(uint idx) public view returns (string memory x) {
    return count2[idx];
  }
  function checkMutatedCounter(uint idx, string memory x) public {
    string memory memoryX = string(abi.encodePacked(i));
    count2[idx] = x;
    emit MutatedCounterUpdated(idx, x);
  }
  function setMutatedCounter(uint idx, string memory x) public {
    string memory memoryX = string(abi.encodePacked(i));
    count2[idx] = x;
    emit MutatedCounterUpdated(idx, x);
  }
  event MutatedCounterUpdated(uint indexed i, string indexed updatedValue);
}
