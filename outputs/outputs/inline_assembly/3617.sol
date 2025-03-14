pragma solidity ^0.8.0;
contract MutatedSemanticallyEqualSquashGenerationsUsingYulWithSemantics {
  uint public r;
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  constructor() {
    r = 1;
    a = address(b);
    g = 2;
    a = address(c);
    d = a;
    c = d;
    b = e;
    g = 3;
    e = b;
    a = b;
    b = a;
    a = a;
    c = b;
    a = a;
    b = e;
  }
}
