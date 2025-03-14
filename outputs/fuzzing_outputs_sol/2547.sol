pragma solidity ^0.8.0;
contract Mutation
{
  bool public boolValue;
  uint256 public intValue;
  bytes32 public bytes32Value;
  address public addressValue;
  address payable public addressValue2;
  modifier check() {
    uint256 memory = fallbackValue;
    boolmemory = boolValue;
    intValue = intval;
    bytes32memory = bytes32value;
    addressValue = addressValue2;
    _;
  }
}
