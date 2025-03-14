pragma solidity ^0.8.0;
contract SemanticMutationExamples {
  struct Data {
    uint number;
    string description;
  }
  mapping(uint => Data) data;
  mapping(address => bool) addresses;

  fallback() external payable{
    addresses[msg.sender] = true;
    data[msg.value].number = uint(block.timestamp);
    data[msg.value].description = msg.data;
    if (!addresses[msg.sender]) {
      uint newData = 333;
      data[msg.value].number = newData;
      data[msg.value].description = "I cannot be sent.";
    }
  }
}
