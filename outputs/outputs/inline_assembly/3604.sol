pragma solidity ^0.8.0;
contract MutatedSquashGenerationsWithSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  uint public g;
  uint r;
  constructor() {
    r = 1;
    a = address(b);
    d = address(a);
    a = address(c);
    a = address(e);
    b = address(3);
    a = c;
    b = e;
    g = 1;
    c = b;
    r = r + 1;
    r = r;
    d = b;
  }
}
