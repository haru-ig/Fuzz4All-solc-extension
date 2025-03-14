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
    c = address(d);
    g = 10;
    r = 1 + 1;
    r = r;
    d = a;
    a = b;
    a = b;
    r = 1 + 1;
    r = r;
    b = a;
    a = address(a + 1);
    e = address(e + 1 + 1);
    d = e;
    b = address(e + 1);
    a = a + 1 + 12;
    c = e + b + g;
    b = address(c);
    b = address(13);
    b = b + 2;
    c = a + 2 + 1;
  }
}
