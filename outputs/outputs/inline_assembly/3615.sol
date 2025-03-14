pragma solidity ^0.8.0;

contract MutatedSemanticallyEqualSquashGenerationsUsingYulWithSemantics {
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
    d = address(c);
    e = a;
    e = a;
    e = a;
    d = a;
    a = b;
    a = b;
    g = 2;
    b = c;
    c = c;
  }
}

pragma solidity ^0.8.0;
contract AdvancedSemanticallyEqualSquashGenerationsUsingYulWithSemantics {
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
    a = a;
    a = a;
    a = a;
    d = a;
    a = b;
    b = c;
    b = e;
    g = 3;
    c = c;
  }
}
