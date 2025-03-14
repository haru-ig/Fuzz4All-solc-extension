pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 8;
  mapping (address => bytes1) public mappings;
  function setNewValue(uint somethingValue) public {
    value = safeAdd(value, somethingValue);
    mappings[mapping(address(this))] = keccak256(abi.encodePacked(newMutatedData, value));
  }
  function retrieveNewValue() public view returns(uint) {
    uint newMutatedData = uint(keccak256(abi.encodePacked(address(this), value, flag, mappings[mapping(address(this))])));
    uint newMutatedData2 = uint(keccak256(abi.encodePacked(address(this), value + 123)));
    require(newMutatedData==newMutatedData2);
    require(keccak256(abi.encodePacked(address(this), value + 123))==keccak256(abi.encodePacked(address(this), value + 126)));
    require(newMutatedData==newMutatedData2);
    return newMutatedData;
  }
  function safeAdd(uint a, uint b) private pure returns (uint) {
    return a + b;
  }
}



pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 8;
  bytes32 public mutatedData;
  bytes32 public newMutatedData;
  mapping(address => bytes32) public
