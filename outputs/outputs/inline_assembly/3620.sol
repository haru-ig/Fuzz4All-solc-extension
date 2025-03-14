pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  uint public g;
  uint public r;
  constructor() {
    r = 1;
    d = address(b);
    g = 2;
    a = address(c);
    a = address(d);
    a = a;
    a = a;
    a = a;
    d = a;
    a = b;
    b = c;
    b = d;
    g = 3;
    c = c;
  }
}
