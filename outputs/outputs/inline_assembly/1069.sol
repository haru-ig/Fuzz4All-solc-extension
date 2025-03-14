pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 8;
  function setNewValue(uint somethingValue) public {
    value = safeAdd(value, somethingValue);
  }
  function retrieveNewValue() public view returns(uint) {
    require(keccak256(abi.encodePacked(address(this), value)) == keccak256(abi.encodePacked(address(this), value + 123)));
    return value;
  }
  function safeAdd(uint a, uint b) private pure returns (uint) {
    return a + b;
  }
}
