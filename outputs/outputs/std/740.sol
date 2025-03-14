pragma solidity ^0.8.0;
contract Voter {
  uint private counter;
  constructor() {
    counter = msg.value;
  }
  function() external payable {
    counter += msg.value;
  }
  function getValue() public view returns (uint) {
    return counter;
  }
}
