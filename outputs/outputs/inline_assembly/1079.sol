pragma solidity ^0.8.0;
contract PreviousGeneration {
  uint public value = 8;
  bytes32 public previousGeneration;
  mapping(address => bytes32) public mappings = mapping(address => keccak256(abi.encodePacked(address(this), value, mappings[address(this)])));
  function previousGenerationWithValuesFunction() public {
    uint previousGeneration = keccak256(abi.encodePacked(previousGeneration, mappings[address(this)]));
    value = safeAdd(value, uint(previousGeneration));
  }
}
