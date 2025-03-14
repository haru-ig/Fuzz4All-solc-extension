pragma solidity ^0.8.0;
abstract contract C fallback {
  mapping (address => uint) public balances;
  receive() external payable {}
}
