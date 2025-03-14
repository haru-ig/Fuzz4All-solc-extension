pragma solidity ^0.8.0;
contract MutatedSquashGenerationsWithYulWithSemantics {
  address public a;
  address public b;
  uint public e;
  uint public r;
  constructor() {
    r = 1;
    d = address(0x4000000000000);
    a = address(b);
    d = address(a);
    r = 1;
    e = 0;
    c = address(b);
    a = b;
    b = c;
    r = r + 1;
    r = r;
    c = b;
  }
}
