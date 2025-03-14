pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  uint256 public k;
  uint256 public h;
  uint256 public t;
  constructor() {
    r = 1;
    a = address(b);
    d = address(a);
    a = address(c);
    a = address(d);
    a = address(e);
    b = address(3);
    a = c;
    b = e;
    g = 1;
    c = address(3);
    a = c;
    d = b;
    r = r + 1;
    r = r;
    a = d;
  }
}
