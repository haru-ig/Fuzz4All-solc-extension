pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithoutSemantics {
  address public a;
  uint public g;
  constructor() {
    a = msg.sender;
    uint r = 1;
    address x;
    for (uint i = 1; i < 1e+7; i++) {
      r = 1;
      a = a;
      x = a;
      r = x;
      uint u = r;
    }
    a = d = msg.sender;
    uint y = a;
  }
}
