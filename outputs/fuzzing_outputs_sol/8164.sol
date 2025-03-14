pragma solidity ^0.8.0;
contract CodeWithFallbackModificationContract{
  uint256 v;

  fallback function() {
    v = 7; }
}
