pragma solidity ^0.8.0;
contract MutatedSquashMutationsUsingYulWithoutSemantics {
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
    if (true) {
      r = r + r + 1;
      a = c;
    }
    d = address(a);
    a = address(1);
    if (r == 0) {
      a = e;
    }
    b = b + 1;
    r = r + 1;
    r = r;
    d = address(b);
  }
}
