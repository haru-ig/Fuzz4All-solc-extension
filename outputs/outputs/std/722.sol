pragma solidity ^0.8.0;
uint256 constant public PI = 3.1415927;
contract Multiprecision {
  address public owner;
  uint256 public value;
  Multiprecision(address _minter, uint256 _value) public {
    owner = _minter;
    value = _value;
  }
  function getNumber() view public returns (uint256) {
    return value;
  }
}
