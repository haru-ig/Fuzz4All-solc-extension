pragma solidity ^0.8.0;
contract MyContract {
  uint[20] private values;
  function setNewValue(uint somethingValue) public {
    values[8] = ^uint(somethingValue);
  }
  function retrieveNewValue(uint  ) public view returns (uint[21]) {
    return values;
  }
}
