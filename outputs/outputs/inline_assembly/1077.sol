pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 2;
  mapping(address => bytes32) public mappings;
  bool public flag = true;
  constructor(uint somethingValue) {
    this.value = safeAdd(value, somethingValue);
    mappings[address(this)] = keccak256(abi.encodePacked(bytes32(4), value, flag, mappings[address(this)]));
  }
  function mutateData() {
    mapping(address => bytes32) newMappings;
    newMappings[address(this)] = keccak256(abi.encodePacked(keccak256(abi.encode(2, 3, 4)), value, flag, mappings[address(this)]));
    mappings = newMappings;
  }
  function test() private pure returns(uint) {
    uint old = keccak256(abi.encodePacked(address(this), value, flag, mappings[address(this)]));
    mappings[address(this)] = keccak256(abi.encodePacked(address(this), value + 1, flag, mappings[address(this)]));
    uint new = keccak256(abi.encodePacked(address(this), value + 1, flag, mappings[address(this)]));
    require(old+1 == new);
    return new;
  }
  function safeAdd(uint a, uint b) private pure returns (uint) {
    return a + b;
  }
}

pragma solidity ^0.8.0;
contract Mut
