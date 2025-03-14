pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  uint public g;
  uint public r;
  constructor() {
    r = 1;
    a = address(b);
    g = 2;
    a = address(c);
    a = address(d);
    a = address(c);
    d = a;
    a = b;
    b = c;
    b = e;
    g = 3;
    c = b;
    r = r + 1;
    r = r;
    d = b;
  }
}
