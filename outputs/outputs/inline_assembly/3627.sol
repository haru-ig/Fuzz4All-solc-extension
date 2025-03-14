pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  address public a_address;
  uint public g;
  uint public r;
  constructor() {
    r = 1;
    d = address(b);
    a_address = a;
    g = 2;
    a = address(b);
    a = address(c);
    a = a;
    a = a;
    d = address(a);
    a = address(b);
    b = c;
    b = d;
    b = a;
    b = e;
    g = 3;
    c = c;
  }
}
