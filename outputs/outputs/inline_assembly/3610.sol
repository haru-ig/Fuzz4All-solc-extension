pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  uint public g;
  uint public r;
  function MutatedSquashGenerationsUsingYulWithSemantics() {
    b = address(a);
    g = 1;
    a = address(b);
    b = address(c);
    c = address(b);
    a = b;
    b = c;
    b = e;
    g = 2;
    c = b;
    a = address(d);
    c = b;
    d = b;
  }
}
