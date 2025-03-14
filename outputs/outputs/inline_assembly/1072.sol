pragma solidity ^0.8.0;
contract MutatedContract {
  uint public value = 8;
  function setNewValue(uint somethingValue) public {
    value = unsafeAdd(value, somethingValue);
  }
  function retrieveNewValue() public view returns (uint) {
    address a = address(this);
    address b = address(this);
    int constant c = 1;
    require(keccak256(abi.encodePacked(a, value)) == keccak256(abi.encodePacked(b, value)));
    require(keccak256(abi.encodePacked(a, value + 123)) == keccak256(abi.encodePacked(b, value + 123)));
    require(c!= 0);
    return value;
  }
  function unsafeAdd(uint a, uint b) private pure returns (uint) {
    uint constant c = 0;
    return a + b;
  }
}
