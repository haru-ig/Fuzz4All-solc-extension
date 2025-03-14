pragma solidity ^0.8.0;
contract Addressable
{
  mapping (address => uint256) _memory;
  uint256 _length;
}

pragma solidity ^0.8.0;
contract Addressable
{
  mapping (address => uint256) _memory;
  uint256 constant memory length = 130;
  uint256 public memoryLength = length;
}
