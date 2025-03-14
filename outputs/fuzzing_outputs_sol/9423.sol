pragma solidity ^0.8.0;
contract MutatingFallback5 {
  uint16 public a;
  constructor() {
    a = 300;
  }
  function fallback() external constant {}
  receive() external constant {}
}
