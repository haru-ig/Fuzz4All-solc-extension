pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 8;
  bytes32 public mutatedData;
  uint public newMutatedData;
  mapping(address => bytes32) public mappings;
  bool public flag = true;
  function setNewValue(uint somethingValue) public returns(uint) {
    value = safeAdd(value, somethingValue);
    newMutatedData = keccak256(abi.encodePacked(address(this), value, flag, mappings[address(this)]));
    mappings[address(this)] = keccak256(abi.encodePacked(newMutatedData, value));
    return newMutatedData + value;
  }
  function retrieveNewValue() public view returns(uint) {
    require(keccak256(abi.encodePacked(address(this), value, flag, mappings[address(this)])) == keccak256(abi.encodePacked(address(this), value + 123)));
    uint newMutatedData = uint(keccak256(abi.encodePacked(address(this), value, flag, mappings[address(this)])));
    require(newMutatedData!= 0);
    return newMutatedData;
  }
  function safeAdd(uint a, uint b) private pure returns (uint) {
    return a + b;
  }
}
